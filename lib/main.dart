import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:moviesbox/firebase_options.dart';
import 'package:moviesbox/injection/injection.dart';
import 'package:moviesbox/src/core/helpers/shared_pref_helper.dart';
import 'package:moviesbox/src/presentation/ads/interstitial_ad_service.dart';
import 'package:moviesbox/src/presentation/bloc/cast_crew/cast_crew_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/movie_details/movie_details_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/now_playing_movies/now_playing_movies_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/popular_movies/popular_movies_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/recommended_movie/recommended_movie_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/similar_movies/similar_movies_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/top_rated_movies/top_rated_movies_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/trending_movies/trending_movies_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/upcoming_movies/upcoming_movies_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/note/note_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/season_details/season_details_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/airing_today_tvshow/airing_today_tvshow_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/on_the_air_tvshow/on_the_air_tvshow_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/popular_tvshows/popular_tvshows_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/recommended_tv_show/recommended_tv_show_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/similar_tv_show/similar_tv_show_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/top_rated_tvshow/top_rated_tvshow_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/trending_tv_shows/trending_tv_shows_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/tv_show_details/tv_show_details_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/watchilist_like_offline/watchilist_like_offline_bloc.dart';
import 'package:moviesbox/src/utilities/admob_manager.dart';
import 'package:moviesbox/src/utilities/app_bloc_observer.dart';
import 'package:moviesbox/src/utilities/go_router_init.dart';
import 'package:moviesbox/src/utilities/logger.dart';
import 'package:moviesbox/src/utilities/remote_config.dart';
import 'package:moviesbox/src/utilities/theme/app_themes.dart';
import 'injection/injection.dart' as di;
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  // Ensure widget binding is initialized before running any async code
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize shared preferences
  await SharedPreferenceHelper().init();

  // Initialize Firebase with platform-specific options
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Run logging and app initialization
  logger.runLogging(() async {
    // Initialize Google Mobile Ads SDK (unawaited since it runs in the background)
    unawaited(MobileAds.instance.initialize());

    // Set system UI overlay style (status bar appearance)
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );

    // Set up BLoC concurrency behavior and observer
    Bloc.transformer = bloc_concurrency.sequential();
    Bloc.observer = const AppBlocObserver();

    // Enable Firebase Crashlytics
    enableCrashlytics();

    // Configure other app dependencies using injectable/get_it
    configureDependencies();

    // Load environment variables from .env file
    await dotenv.load(fileName: ".env");

    // Initialize Firebase Remote Config
    await RemoteConfigService().init();

    // Initialize AdMob settings using remote config
    await GoogleAdMobManager().initializeRemoteConfig();

    // Preload Interstitial Ads
    InterstitialAdService().loadAd();

    // Launch the Flutter application
    runApp(const MyApp());
  });
}

void enableCrashlytics() async {
  const fatalError = true;
  // Non-async exceptions
  FlutterError.onError = (errorDetails) {
    if (fatalError) {
      // If you want to record a "fatal" exception
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      // ignore: dead_code
    } else {
      // If you want to record a "non-fatal" exception
      FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
    }
  };
  // Async exceptions
  PlatformDispatcher.instance.onError = (error, stack) {
    if (fatalError) {
      // If you want to record a "fatal" exception
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      // ignore: dead_code
    } else {
      // If you want to record a "non-fatal" exception
      FirebaseCrashlytics.instance.recordError(error, stack);
    }
    return true;
  };
  FirebaseAnalytics.instance
      .setAnalyticsCollectionEnabled(true)
      .then((value) => debugPrint("Enable Google Analytics"));
  if (kDebugMode && !kIsWeb) {
    // Force disable Crashlytics collection while doing every day development.
    // Temporarily toggle this to true if you want to test crash reporting in your app.
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Dashboard Bloc
        BlocProvider(create: (_) => di.getIt<DashboardBloc>()),
        // Movies
        BlocProvider(create: (_) => di.getIt<TrendingMoviesBloc>()),
        BlocProvider(create: (_) => di.getIt<TrendingTvShowsBloc>()),
        BlocProvider(create: (_) => di.getIt<PopularMoviesBloc>()),
        BlocProvider(create: (_) => di.getIt<TopRatedMoviesBloc>()),
        BlocProvider(create: (_) => di.getIt<UpcomingMoviesBloc>()),
        BlocProvider(create: (_) => di.getIt<NowPlayingMoviesBloc>()),

        // Movie Details
        BlocProvider(create: (_) => di.getIt<MovieDetailsBloc>()),
        // Similar Movies
        BlocProvider(create: (_) => di.getIt<SimilarMoviesBloc>()),
        // Recommended Movies
        BlocProvider(create: (_) => di.getIt<RecommendedMovieBloc>()),

        // Cast and Crew
        BlocProvider(create: (_) => di.getIt<CastCrewBloc>()),

        // TvShows
        BlocProvider(create: (_) => di.getIt<AiringTodayBloc>()),
        BlocProvider(create: (_) => di.getIt<OnTheAirBloc>()),
        BlocProvider(create: (_) => di.getIt<PopularTvshowsBloc>()),
        BlocProvider(create: (_) => di.getIt<TopRatedTvshowBloc>()),

        // Tv Show Details
        BlocProvider(create: (_) => di.getIt<TvShowDetailsBloc>()),
        BlocProvider(create: (_) => di.getIt<RecommendedTvShowBloc>()),
        BlocProvider(create: (_) => di.getIt<SimilarTvShowBloc>()),
        BlocProvider(create: (_) => di.getIt<SeasonDetailsBloc>()),

        // Watchlist and Likes
        BlocProvider(create: (_) => di.getIt<WatchilistLikeOfflineBloc>()),

        // Note Bloc
        BlocProvider(create: (_) => di.getIt<NoteBloc>()),

        // Quiz Bloc
        BlocProvider(create: (_) => di.getIt<QuizBloc>()),
      ],
      child: MaterialApp.router(
        title: 'Movies Box',
        routerConfig: routerinit,
        debugShowCheckedModeBanner: false,
        darkTheme: AppThemes.darkTheme,
        themeMode: ThemeMode.dark,
        locale: const Locale('en', 'US'),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          FlutterQuillLocalizations.delegate,
        ],
      ),
    );
  }
}
