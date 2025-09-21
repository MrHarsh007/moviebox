import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesbox/src/presentation/ads/interstitial_ad_service.dart';
import 'package:moviesbox/src/presentation/pages/terms_privacy/get_started_screen.dart';
import 'package:moviesbox/src/utilities/admob_manager.dart';
import 'package:moviesbox/web_only_json_upload_page.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/presentation/pages/cast_crew/cast_crew_screen.dart';
import 'package:moviesbox/src/presentation/pages/dashboard/dashboard_screen.dart';
import 'package:moviesbox/src/presentation/pages/error/error_screen.dart';
import 'package:moviesbox/src/presentation/pages/movie_details/movie_details_screen.dart';
import 'package:moviesbox/src/presentation/pages/movies/widgets/movies_list_screen.dart';
import 'package:moviesbox/src/presentation/pages/notes/markdown_screen.dart';
import 'package:moviesbox/src/presentation/pages/notes/notes_screen.dart';
import 'package:moviesbox/src/presentation/pages/onboarding/onboarding_screen.dart';
import 'package:moviesbox/src/presentation/pages/quiz/que_ans_screen.dart';
import 'package:moviesbox/src/presentation/pages/quiz/quiz_screen.dart';
import 'package:moviesbox/src/presentation/pages/season_details/season_details_screen.dart';
import 'package:moviesbox/src/presentation/pages/settings/setting_screen.dart';
import 'package:moviesbox/src/presentation/pages/splash/splash_screen.dart';
import 'package:moviesbox/src/presentation/pages/tv_show_details/tv_shows_details_screen.dart';
import 'package:moviesbox/src/presentation/pages/tvshows/widgets/tvshow_list.dart';
import 'package:moviesbox/src/utilities/routing/app_routes.dart';

final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

GoRouter routerinit = GoRouter(
  initialLocation: AppRoutes.splashPath,
  observers: [routeObserver],
  routes: kIsWeb
      ? [
          GoRoute(
            name: AppRoutes.splashName,
            path: AppRoutes.splashPath,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: const JsonUploadPage(),
              );
            },
          ),
        ]
      : <RouteBase>[
          ///  =================================================================
          ///  ********************** Splash Route *****************************
          /// ==================================================================
          GoRoute(
            name: AppRoutes.splashName,
            path: AppRoutes.splashPath,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: const SplashScreen(),
              );
            },
          ),

          ///  =================================================================
          ///  ********************** GetStarted Route *****************************
          /// ==================================================================
          GoRoute(
            name: AppRoutes.getStartedName,
            path: AppRoutes.getStartedPath,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: const GetStartedScreen(),
              );
            },
          ),

          ///  =================================================================
          ///  ********************** Onboarding Route *****************************
          /// ==================================================================
          GoRoute(
            name: AppRoutes.onboardingName,
            path: AppRoutes.onboardingPath,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: const OnboardingScreen(),
              );
            },
          ),

          ///  =================================================================
          ///  ********************** Dashboard Route *****************************
          /// ==================================================================
          GoRoute(
            name: AppRoutes.dashboardName,
            path: AppRoutes.dashboardPath,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: const DashboardScreen(),
              );
            },
            routes: [
              GoRoute(
                name: AppRoutes.movieDetailsName,
                path: AppRoutes.movieDetailsPath,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  final int movieId = int.parse(
                    state.uri.queryParameters['id'] ?? '0',
                  );
                  return buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: MovieDetailsScreen(
                      key: ValueKey(movieId),
                      movieId: movieId,
                    ),
                  );
                },
              ),
              GoRoute(
                name: AppRoutes.settingsName,
                path: AppRoutes.settingsPath,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: SettingScreen(),
                  );
                },
              ),
              GoRoute(
                name: AppRoutes.tvShowDetailsName,
                path: AppRoutes.tvShowDetailsPath,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  final int tvShowId = int.parse(
                    state.uri.queryParameters['id'] ?? '0',
                  );
                  return buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: TvShowsDetailsScreen(
                      key: ValueKey(tvShowId),
                      movieId: tvShowId,
                    ),
                  );
                },
                routes: [
                  GoRoute(
                    name: AppRoutes.seasonDetailsName,
                    path: AppRoutes.seasonDetailsPath,
                    pageBuilder: (BuildContext context, GoRouterState state) {
                      final int tvShowId = int.parse(
                        state.uri.queryParameters['id'] ?? '0',
                      );
                      // get season
                      final int seasonNumber = int.parse(
                        state.uri.queryParameters['season'] ?? '0',
                      );
                      // Get title
                      final String title =
                          state.uri.queryParameters['title'] ?? '';
                      return buildPageWithDefaultTransition<void>(
                        context: context,
                        state: state,
                        child: SeasonDetailsScreen(
                          key: ValueKey(tvShowId),
                          seriesId: tvShowId,
                          seasonNumber: seasonNumber,
                          title: title,
                        ),
                      );
                    },
                  ),
                ],
              ),

              GoRoute(
                name: AppRoutes.notesName,
                path: AppRoutes.notesPath,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: NotesScreen(),
                  );
                },
              ),
              GoRoute(
                name: AppRoutes.markdownNotesName,
                path: AppRoutes.markdownNotesPath,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  final String noteId = state.uri.queryParameters['uid'] ?? '';

                  final String title = state.uri.queryParameters['title'] ?? "";

                  final int? movieId =
                      state.uri.queryParameters['movie_id'] != null
                      ? int.tryParse(state.uri.queryParameters['movie_id']!)
                      : null;

                  final String? type = state.uri.queryParameters['type'];

                  final bool isNew =
                      state.uri.queryParameters['is_new'] == 'true';
                  return buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: MarkdownScreen(
                      title: title,
                      isNew: isNew,
                      movieId: movieId,
                      type: type,
                      uid: isNew ? null : noteId.toString(),
                    ),
                  );
                },
              ),
              GoRoute(
                name: AppRoutes.quizName,
                path: AppRoutes.quizPath,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: QuizScreen(),
                  );
                },
              ),

              GoRoute(
                name: AppRoutes.queAnswersName,
                path: AppRoutes.queAnswersPath,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: QueAnsScreen(),
                  );
                },
              ),
            ],
          ),

          ///  =================================================================
          ///  ********************** Movies Route *****************************
          /// ==================================================================
          GoRoute(
            name: AppRoutes.moviesName,
            path: AppRoutes.moviesPath,
            pageBuilder: (BuildContext context, GoRouterState state) {
              final String title =
                  state.uri.queryParameters['title'] ?? 'Movies';
              final String type = state.uri.queryParameters['type'] ?? '';
              return buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: MoviesListScreen(
                  title: title,
                  movieType: MoviesEnum.values.firstWhere(
                    (e) => e.name == type,
                    orElse: () => MoviesEnum.popularMovies,
                  ),
                ),
              );
            },
          ),

          ///  =================================================================
          ///  ********************** TvShow Route *****************************
          /// ==================================================================
          GoRoute(
            name: AppRoutes.tvShowsName,
            path: AppRoutes.tvShowsPath,
            pageBuilder: (BuildContext context, GoRouterState state) {
              final String title =
                  state.uri.queryParameters['title'] ?? 'TV Shows';
              final String type = state.uri.queryParameters['type'] ?? '';
              return buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: TvshowListScreen(
                  title: title,
                  movieType: TvShowsEnum.values.firstWhere(
                    (e) => e.name == type,
                    orElse: () => TvShowsEnum.popularTvShows,
                  ),
                ),
              );
            },
          ),

          ///  =================================================================
          ///  ********************** Cast Crew Route *****************************
          /// ==================================================================
          GoRoute(
            name: AppRoutes.castCrewName,
            path: AppRoutes.castCrewPath,
            pageBuilder: (BuildContext context, GoRouterState state) {
              final int id = int.parse(state.uri.queryParameters['id'] ?? '0');
              final String title =
                  state.uri.queryParameters['title'] ?? 'Cast & Crew';

              return buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: CastCrewScreen(id: id, title: title),
              );
            },
          ),
        ],

  ///  =================================================================
  ///  ******************* Error Page Builder **************************
  /// ==================================================================
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: ErrorScreen());
  },

  ///  =================================================================
  ///  ******************* Redirect If Needed **************************
  /// ==================================================================
  redirect: (context, state) {
    debugPrint('redirect: ${state.uri}');
    // Redirect because for captcha verify to browser then navigate to app

    return null;
  },
);

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}

Page<dynamic> Function(BuildContext, GoRouterState) defaultPageBuilder<T>(
  Widget child,
) => (BuildContext context, GoRouterState state) {
  return buildPageWithDefaultTransition<T>(
    context: context,
    state: state,
    child: child,
  );
};

Future<void> goWithInterstitialAd(
  BuildContext context,
  String routeName, {
  Map<String, String>? queryParams,
  Object? extra,
}) async {
  final adManager = GoogleAdMobManager();

  // Identify ad category based on route name
  bool shouldShow = false;

  adManager.incrementTapCount();
  shouldShow = adManager.shouldShowAd();
  debugPrint("tapCount: ${adManager.totalTapCount}, shouldShowAd: $shouldShow");

  if (shouldShow) {
    await InterstitialAdService().showAdIfAvailable(
      onAdComplete: () {
        GoRouter.of(context).pushNamed(
          routeName,
          queryParameters: queryParams ?? {},
          extra: extra,
        );
      },
    );
  } else {
    GoRouter.of(
      context,
    ).pushNamed(routeName, queryParameters: queryParams ?? {}, extra: extra);
  }

  FirebaseAnalytics.instance.logScreenView(
    screenName: routeName,
    screenClass: routeName,
  );
}
