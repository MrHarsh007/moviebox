import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/presentation/ads/app_open_ads_widget.dart';
import 'package:moviesbox/src/presentation/ads/interstitial_ad_service.dart';
import 'package:moviesbox/src/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:moviesbox/src/presentation/pages/favourite/fav_screen.dart';
import 'package:moviesbox/src/presentation/pages/tvshows/tv_show_screen.dart';
import 'package:moviesbox/src/presentation/pages/watchlist/watchlist_screen.dart';
import 'package:moviesbox/src/utilities/admob_manager.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with WidgetsBindingObserver {
  int waitingTimeInSeconds = GoogleAdMobManager().appOpenWaitingTimeSecond;
  final _appOpenAdManager = AppOpenAdManager();
  DateTime? _lastPausedTime;

  void handleAppLifecycleState(AppLifecycleState state) {
    debugPrint('AppLifecycleState changed: $state');
    if (state == AppLifecycleState.paused) {
      _lastPausedTime = DateTime.now();
    } else if (state == AppLifecycleState.resumed) {
      final now = DateTime.now();
      final pausedDuration = now.difference(_lastPausedTime ?? now);

      final interstitialDismissedRecently =
          now.difference(
            InterstitialAdService().lastInterstitialDismissedTime,
          ) >
          Duration(seconds: 3);

      // Only show ad if paused for more than X seconds and when interstitial ad was not dismissed recently
      if (interstitialDismissedRecently &&
          (pausedDuration.inSeconds > waitingTimeInSeconds)) {
        _appOpenAdManager.showAdIfAvailable();
      }
    }
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    _appOpenAdManager.loadAd(); // Load at startup
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    handleAppLifecycleState(state);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          floatingActionButton: FabCircularMenuPlus(
            ringDiameter: 230,
            ringWidth: 60,
            fabSize: 56.0,
            fabOpenIcon: Icon(Icons.menu, color: Colors.white, size: 28),
            fabCloseIcon: Icon(Icons.close, color: Colors.white, size: 28),
            ringColor: Colors.transparent,
            fabColor: AppColor.primaryColor,
            fabOpenColor: AppColor.primaryColor,
            fabCloseColor: AppColor.primaryColor,
            fabElevation: 8.0,
            fabMargin: const EdgeInsets.all(8.0),
            animationDuration: const Duration(milliseconds: 400),
            // curve: Curves.easeIn,
            // reverseCurve: Curves.easeIn,
            alignment: Alignment.bottomRight,

            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),

                child: IconButton(
                  icon: Icon(
                    EvaIcons.settings2Outline,
                    size: 26,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    GoRouter.of(context).pushNamed(AppRoutes.settingsName);
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),

                child: IconButton(
                  icon: Icon(
                    Icons.notes_outlined,
                    size: 26,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    GoRouter.of(context).pushNamed(AppRoutes.notesName);
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),

                child: IconButton(
                  icon: Icon(
                    Icons.quiz_outlined,
                    size: 26,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    GoRouter.of(context).pushNamed(AppRoutes.quizName);
                  },
                ),
              ),
            ],
          ),

          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniEndFloat,
          body: _switchWidget(state.index),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color(0xFF0b1414),
            currentIndex: state.index,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColor.primaryColor,
            unselectedItemColor: Colors.white,

            selectedFontSize: 12,
            unselectedFontSize: 12,
            onTap: (index) {
              context.read<DashboardBloc>().add(DashboardEvent.setIndex(index));
            },
            items: List.generate(iconList.length, (index) {
              return BottomNavigationBarItem(
                icon: Icon(iconList[index], size: 24),
                label: textList[index],
              );
            }),
          ),
        );
      },
    );
  }

  // Create switch which take index and returns widget
  Widget _switchWidget(int index) {
    switch (index) {
      case 0:
        return MoviesScreen();
      case 1:
        return TvShowScreen();
      case 2:
        return WatchlistScreen();
      case 3:
        return FavoritesScreen();
      default:
        return MoviesScreen(); // Default case
    }
  }

  // Create icon list for the bottom navigation bar
  final List<IconData> iconList = [
    EvaIcons.filmOutline,
    EvaIcons.tvOutline,
    EvaIcons.bookmarkOutline,
    EvaIcons.heartOutline,
  ];

  final List<String> textList = [
    "Movies",
    "TV Shows",
    "Watchlist",
    "Favorites",
  ];
}
