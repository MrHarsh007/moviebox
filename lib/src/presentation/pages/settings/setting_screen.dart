import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/common_componenet/common_snackbar.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/data/offline_database/markdown_database_helper.dart';
import 'package:moviesbox/src/data/offline_database/watchlist_movie_database.dart';
import 'package:moviesbox/src/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/trending_tv_shows/trending_tv_shows_bloc.dart';
import 'package:moviesbox/src/presentation/pages/settings/setting_action_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DashboardBloc>().add(const DashboardEvent.fetchSettingData());
  }

  @override
  Widget build(BuildContext context) {
    final settingOptions = [
      SettingOption(
        icon: EvaIcons.film,
        title: "Watchlist Movies",
        subtitle:
            "This will remove all watchlist movies from your profile. This action cannot be undone.",
        onTap: () => WatchlistMovieDatabaseHelper().clearAllMovies(
          LocalStorageConstants.watchlistMoviesTableName,
        ),
      ),
      SettingOption(
        icon: EvaIcons.tv,
        title: "Watchlist TV Shows",
        subtitle:
            "This will remove all watchlist TV shows from your profile. This action cannot be undone.",
        onTap: () => WatchlistMovieDatabaseHelper().clearAllMovies(
          LocalStorageConstants.watchlistTvShowsTableName,
        ),
      ),
      SettingOption(
        icon: EvaIcons.filmOutline,
        title: "Liked Movies",
        subtitle:
            "This will remove all liked movies from your profile. This action cannot be undone.",
        onTap: () => WatchlistMovieDatabaseHelper().clearAllMovies(
          LocalStorageConstants.likedMoviesTableName,
        ),
      ),
      SettingOption(
        icon: EvaIcons.tvOutline,
        title: "Liked TV Shows",
        subtitle:
            "This will remove all liked TV shows from your profile. This action cannot be undone.",
        onTap: () => WatchlistMovieDatabaseHelper().clearAllMovies(
          LocalStorageConstants.likedTvShowsTableName,
        ),
      ),
      SettingOption(
        icon: Icons.notes_outlined,
        title: "Saved Notes",
        subtitle:
            "This will remove all saved notes from your profile. This action cannot be undone.",
        onTap: () => MarkdownNoteDatabaseHelper().clearAllNotes(),
      ),
      SettingOption(
        icon: EvaIcons.trash2Outline,
        title: "Clear All Data",
        subtitle:
            "This will remove all watchlist movies & TV shows, liked movies & TV shows, and saved notes from your profile.",

        onTap: () {
          WatchlistMovieDatabaseHelper().clearAllMovies(
            LocalStorageConstants.watchlistMoviesTableName,
          );
          WatchlistMovieDatabaseHelper().clearAllMovies(
            LocalStorageConstants.watchlistTvShowsTableName,
          );
          WatchlistMovieDatabaseHelper().clearAllMovies(
            LocalStorageConstants.likedMoviesTableName,
          );
          WatchlistMovieDatabaseHelper().clearAllMovies(
            LocalStorageConstants.likedTvShowsTableName,
          );

          MarkdownNoteDatabaseHelper().clearAllNotes();

          SharedPreferenceHelper().clear();
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: context.textTheme.headlineSmall),
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      body: BlocBuilder<DashboardBloc, DashboardState>(
        buildWhen: (previous, current) =>
            previous.privacyPolicy != current.privacyPolicy ||
            previous.termsOfService != current.termsOfService ||
            previous.aboutUs != current.aboutUs,
        builder: (context, state) {
          return ListView(
            children: [
              _buildMovieToggle(),
              15.hx,
              _buildTvShowToggle(),
              15.hx,
              ...settingOptions.map(
                (option) => SettingsActionTile(option: option),
              ),
              InkWell(
                onTap: () =>
                    launchExternalUrl(state.privacyPolicy ?? "", context),
                child: SettingsActionTile(
                  option: SettingOption(
                    icon: Icons.privacy_tip,
                    title: "Privacy Policy",
                    subtitle: "Read our privacy policy",
                  ),
                ),
              ),

              // Terms of Service
              InkWell(
                onTap: () =>
                    launchExternalUrl(state.termsOfService ?? "", context),
                child: SettingsActionTile(
                  option: SettingOption(
                    icon: Icons.article,
                    title: "Terms of Service",
                    subtitle: "Read our terms of service",
                  ),
                ),
              ),

              // About Us
              InkWell(
                onTap: () => launchExternalUrl(state.aboutUs ?? "", context),
                child: SettingsActionTile(
                  option: SettingOption(
                    icon: Icons.info,
                    title: "About Us",
                    subtitle: "Learn more about us",
                  ),
                ),
              ),
              15.hx,
            ],
          );
        },
      ),
    );
  }

  Widget _buildMovieToggle() {
    return BlocBuilder<TrendingMoviesBloc, TrendingMoviesState>(
      buildWhen: (prev, curr) => prev.trendingBy != curr.trendingBy,
      builder: (context, state) {
        return ListTile(
          leading: const Icon(EvaIcons.filmOutline, size: 30),
          title: Text(
            "Show Weekly Trending Movies",
            style: context.textTheme.titleLarge,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "Switch to show trending movies of the week instead of the day.",
              style: context.textTheme.bodyMedium?.copyWith(
                color: Colors.white70,
                height: 1.2,
              ),
            ),
          ),
          trailing: Switch(
            value: state.trendingBy == TrendingBy.week,
            trackColor: state.trendingBy == TrendingBy.week
                ? const WidgetStatePropertyAll(Colors.red)
                : null,
            thumbColor: const WidgetStatePropertyAll(Colors.white),
            onChanged: (val) {
              final trendingBy = val ? TrendingBy.week : TrendingBy.day;
              context.read<TrendingMoviesBloc>().add(
                TrendingMoviesEvent.changeTrendingBy(trendingBy: trendingBy),
              );
              SharedPreferenceHelper().storedata(
                LocalStorageConstants.trendingMoviesTimeWindow,
                trendingBy.name,
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildTvShowToggle() {
    return BlocBuilder<TrendingTvShowsBloc, TrendingTvShowsState>(
      buildWhen: (prev, curr) => prev.trendingBy != curr.trendingBy,
      builder: (context, state) {
        return ListTile(
          leading: const Icon(EvaIcons.tvOutline, size: 30),
          title: Text(
            "Show Weekly Trending TV Shows",
            style: context.textTheme.titleLarge,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "Switch to show trending TV shows of the week instead of the day.",
              style: context.textTheme.bodyMedium?.copyWith(
                color: Colors.white70,
                height: 1.2,
              ),
            ),
          ),
          trailing: Switch(
            value: state.trendingBy == TrendingBy.week,
            trackColor: state.trendingBy == TrendingBy.week
                ? const WidgetStatePropertyAll(Colors.red)
                : null,
            thumbColor: const WidgetStatePropertyAll(Colors.white),
            onChanged: (val) {
              final trendingBy = val ? TrendingBy.week : TrendingBy.day;
              context.read<TrendingTvShowsBloc>().add(
                TrendingTvShowsEvent.changeTrendingBy(trendingBy: trendingBy),
              );
              SharedPreferenceHelper().storedata(
                LocalStorageConstants.trendingTvShowsTimeWindow,
                trendingBy.name,
              );
            },
          ),
        );
      },
    );
  }
}

void launchExternalUrl(String urlString, BuildContext context) async {
  if (urlString.isEmpty) {
    if (context.mounted) {
      showCustomSnackBar(
        context,
        type: SnackBarType.error,
        message: "Please try again later.",
      );
    }
    return;
  }
  final Uri url = Uri.parse(urlString);
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    if (context.mounted) {
      showCustomSnackBar(
        context,
        type: SnackBarType.error,
        message: "Could not launch $urlString",
      );
    }
  }
}
