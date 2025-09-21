// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:moviesbox/src/data/datasource/cast_datasource.dart' as _i28;
import 'package:moviesbox/src/data/datasource/movies_datasource.dart' as _i743;
import 'package:moviesbox/src/data/datasource/quiz_datasource.dart' as _i614;
import 'package:moviesbox/src/data/datasource/tv_datasource.dart' as _i825;
import 'package:moviesbox/src/data/offline_database/movies_database.dart'
    as _i522;
import 'package:moviesbox/src/data/offline_database/watchlist_movie_database.dart'
    as _i882;
import 'package:moviesbox/src/data/repository/cast_repository_impl.dart'
    as _i42;
import 'package:moviesbox/src/data/repository/movie_repository_impl.dart'
    as _i241;
import 'package:moviesbox/src/data/repository/quiz_repository_impl.dart'
    as _i462;
import 'package:moviesbox/src/data/repository/tv_shows_repository_impl.dart'
    as _i432;
import 'package:moviesbox/src/domain/repository/cast_repository.dart' as _i927;
import 'package:moviesbox/src/domain/repository/movies_repository.dart'
    as _i1005;
import 'package:moviesbox/src/domain/repository/quiz_respository.dart' as _i85;
import 'package:moviesbox/src/domain/repository/tv_show_repository.dart'
    as _i344;
import 'package:moviesbox/src/domain/usecase/cast_usecase.dart' as _i533;
import 'package:moviesbox/src/domain/usecase/movie_usecase.dart' as _i656;
import 'package:moviesbox/src/domain/usecase/quiz_usecase.dart' as _i1047;
import 'package:moviesbox/src/domain/usecase/tv_shows_usecase.dart' as _i483;
import 'package:moviesbox/src/presentation/bloc/cast_crew/cast_crew_bloc.dart'
    as _i785;
import 'package:moviesbox/src/presentation/bloc/dashboard/dashboard_bloc.dart'
    as _i858;
import 'package:moviesbox/src/presentation/bloc/movies/movie_details/movie_details_bloc.dart'
    as _i661;
import 'package:moviesbox/src/presentation/bloc/movies/now_playing_movies/now_playing_movies_bloc.dart'
    as _i398;
import 'package:moviesbox/src/presentation/bloc/movies/popular_movies/popular_movies_bloc.dart'
    as _i60;
import 'package:moviesbox/src/presentation/bloc/movies/recommended_movie/recommended_movie_bloc.dart'
    as _i926;
import 'package:moviesbox/src/presentation/bloc/movies/similar_movies/similar_movies_bloc.dart'
    as _i1011;
import 'package:moviesbox/src/presentation/bloc/movies/top_rated_movies/top_rated_movies_bloc.dart'
    as _i617;
import 'package:moviesbox/src/presentation/bloc/movies/trending_movies/trending_movies_bloc.dart'
    as _i78;
import 'package:moviesbox/src/presentation/bloc/movies/upcoming_movies/upcoming_movies_bloc.dart'
    as _i1011;
import 'package:moviesbox/src/presentation/bloc/note/note_bloc.dart' as _i140;
import 'package:moviesbox/src/presentation/bloc/quiz/quiz_bloc.dart' as _i220;
import 'package:moviesbox/src/presentation/bloc/season_details/season_details_bloc.dart'
    as _i262;
import 'package:moviesbox/src/presentation/bloc/tvshows/airing_today_tvshow/airing_today_tvshow_bloc.dart'
    as _i312;
import 'package:moviesbox/src/presentation/bloc/tvshows/on_the_air_tvshow/on_the_air_tvshow_bloc.dart'
    as _i542;
import 'package:moviesbox/src/presentation/bloc/tvshows/popular_tvshows/popular_tvshows_bloc.dart'
    as _i144;
import 'package:moviesbox/src/presentation/bloc/tvshows/recommended_tv_show/recommended_tv_show_bloc.dart'
    as _i737;
import 'package:moviesbox/src/presentation/bloc/tvshows/similar_tv_show/similar_tv_show_bloc.dart'
    as _i298;
import 'package:moviesbox/src/presentation/bloc/tvshows/top_rated_tvshow/top_rated_tvshow_bloc.dart'
    as _i603;
import 'package:moviesbox/src/presentation/bloc/tvshows/trending_tv_shows/trending_tv_shows_bloc.dart'
    as _i587;
import 'package:moviesbox/src/presentation/bloc/tvshows/tv_show_details/tv_show_details_bloc.dart'
    as _i79;
import 'package:moviesbox/src/presentation/bloc/watchilist_like_offline/watchilist_like_offline_bloc.dart'
    as _i1027;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i522.MoviesDatabase>(() => _i522.MoviesDatabase());
    gh.singleton<_i882.WatchlistMovieDatabaseHelper>(
      () => _i882.WatchlistMovieDatabaseHelper(),
    );
    gh.singleton<_i140.NoteBloc>(() => _i140.NoteBloc());
    gh.singleton<_i858.DashboardBloc>(() => _i858.DashboardBloc());
    gh.lazySingleton<_i28.CastDatasource>(() => _i28.CastDatasourceImpl());
    gh.singleton<_i1027.WatchilistLikeOfflineBloc>(
      () => _i1027.WatchilistLikeOfflineBloc(
        gh<_i882.WatchlistMovieDatabaseHelper>(),
      ),
    );
    gh.lazySingleton<_i825.TvShowsDatasource>(
      () => _i825.TvShowsDatasourceImpl(),
    );
    gh.lazySingleton<_i743.MoviesDatasource>(
      () => _i743.MoviesDatasourceImpl(),
    );
    gh.lazySingleton<_i927.CastRepository>(
      () => _i42.CastRepositoryImpl(gh<_i28.CastDatasource>()),
    );
    gh.lazySingleton<_i614.QuizDatasource>(() => _i614.QuizDatasourceImpl());
    gh.lazySingleton<_i344.TvShowRepository>(
      () => _i432.TvShowsRepositoryImpl(gh<_i825.TvShowsDatasource>()),
    );
    gh.lazySingleton<_i85.QuizRepository>(
      () => _i462.TvShowsRepositoryImpl(gh<_i614.QuizDatasource>()),
    );
    gh.lazySingleton<_i1005.MovieRepository>(
      () => _i241.MovieRepositoryImpl(gh<_i743.MoviesDatasource>()),
    );
    gh.factory<_i483.TvShowsUsecase>(
      () => _i483.TvShowsUsecase(gh<_i344.TvShowRepository>()),
    );
    gh.factory<_i1047.QuizUsecase>(
      () => _i1047.QuizUsecase(gh<_i85.QuizRepository>()),
    );
    gh.factory<_i533.CastUsecase>(
      () => _i533.CastUsecase(gh<_i927.CastRepository>()),
    );
    gh.singleton<_i785.CastCrewBloc>(
      () => _i785.CastCrewBloc(gh<_i533.CastUsecase>()),
    );
    gh.singleton<_i262.SeasonDetailsBloc>(
      () => _i262.SeasonDetailsBloc(gh<_i483.TvShowsUsecase>()),
    );
    gh.singleton<_i603.TopRatedTvshowBloc>(
      () => _i603.TopRatedTvshowBloc(gh<_i483.TvShowsUsecase>()),
    );
    gh.singleton<_i542.OnTheAirBloc>(
      () => _i542.OnTheAirBloc(gh<_i483.TvShowsUsecase>()),
    );
    gh.singleton<_i144.PopularTvshowsBloc>(
      () => _i144.PopularTvshowsBloc(gh<_i483.TvShowsUsecase>()),
    );
    gh.singleton<_i312.AiringTodayBloc>(
      () => _i312.AiringTodayBloc(gh<_i483.TvShowsUsecase>()),
    );
    gh.singleton<_i737.RecommendedTvShowBloc>(
      () => _i737.RecommendedTvShowBloc(gh<_i483.TvShowsUsecase>()),
    );
    gh.singleton<_i587.TrendingTvShowsBloc>(
      () => _i587.TrendingTvShowsBloc(gh<_i483.TvShowsUsecase>()),
    );
    gh.singleton<_i298.SimilarTvShowBloc>(
      () => _i298.SimilarTvShowBloc(gh<_i483.TvShowsUsecase>()),
    );
    gh.singleton<_i220.QuizBloc>(
      () => _i220.QuizBloc(gh<_i1047.QuizUsecase>()),
    );
    gh.factory<_i656.MovieUsecase>(
      () => _i656.MovieUsecase(gh<_i1005.MovieRepository>()),
    );
    gh.singleton<_i79.TvShowDetailsBloc>(
      () => _i79.TvShowDetailsBloc(
        gh<_i483.TvShowsUsecase>(),
        gh<_i1027.WatchilistLikeOfflineBloc>(),
      ),
    );
    gh.singleton<_i661.MovieDetailsBloc>(
      () => _i661.MovieDetailsBloc(
        gh<_i656.MovieUsecase>(),
        gh<_i1027.WatchilistLikeOfflineBloc>(),
      ),
    );
    gh.singleton<_i60.PopularMoviesBloc>(
      () => _i60.PopularMoviesBloc(gh<_i656.MovieUsecase>()),
    );
    gh.singleton<_i926.RecommendedMovieBloc>(
      () => _i926.RecommendedMovieBloc(gh<_i656.MovieUsecase>()),
    );
    gh.singleton<_i78.TrendingMoviesBloc>(
      () => _i78.TrendingMoviesBloc(gh<_i656.MovieUsecase>()),
    );
    gh.singleton<_i1011.SimilarMoviesBloc>(
      () => _i1011.SimilarMoviesBloc(gh<_i656.MovieUsecase>()),
    );
    gh.singleton<_i398.NowPlayingMoviesBloc>(
      () => _i398.NowPlayingMoviesBloc(gh<_i656.MovieUsecase>()),
    );
    gh.singleton<_i1011.UpcomingMoviesBloc>(
      () => _i1011.UpcomingMoviesBloc(gh<_i656.MovieUsecase>()),
    );
    gh.singleton<_i617.TopRatedMoviesBloc>(
      () => _i617.TopRatedMoviesBloc(gh<_i656.MovieUsecase>()),
    );
    return this;
  }
}
