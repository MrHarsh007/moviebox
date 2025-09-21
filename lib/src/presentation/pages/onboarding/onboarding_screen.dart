import 'package:moviesbox/export.dart';

/// The main onboarding screen shown to users when they first open the app.
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0; // Tracks the current onboarding page index

  /// Handles the "Next" button press.
  /// Navigates to dashboard if last page, otherwise advances to next page.
  void _onNextPressed(BuildContext context) {
    if (_currentPage == listOfScreenContent.length - 1) {
      // Set shared preference to indicate onboarding is complete
      SharedPreferenceHelper().storeBool(
        LocalStorageConstants.isFirstTimeLaunch,
        false,
      );
      GoRouter.of(context).goNamed(AppRoutes.dashboardName);
    } else {
      setState(() {
        _currentPage++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentModel = listOfScreenContent[_currentPage];

    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        switchInCurve: Curves.easeIn,
        switchOutCurve: Curves.easeOut,
        // Fade transition between onboarding pages
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: OnboardingWidget(
          key: ValueKey<int>(
            _currentPage,
          ), // Ensures AnimatedSwitcher recognizes changes
          onboardingModel: currentModel,
          label: _currentPage == listOfScreenContent.length - 1
              ? "Get Started"
              : "Next",
          index: _currentPage,
          onNextPressed: () => _onNextPressed(context),
          // Handles the "Back" button press, moves to previous page if possible
          onBackPressed: () => setState(() {
            if (_currentPage > 0) {
              _currentPage--;
            }
          }),
        ),
      ),
    );
  }
}

//====================== Onboarding List Content =======================
List<OnboardingModel> listOfScreenContent = <OnboardingModel>[
  OnboardingModel(
    img1: Assets.images.onboarding3.path,
    title: "Discover Films & Shows",
    description:
        "Discover the latest hits, hidden gems, and upcoming releases. Effortlessly browse top-rated and trending titles; all curated through the power of TMDB.",
  ),
  OnboardingModel(
    img1: Assets.images.onboarding2.path,
    title: "The Movie & TV Explorer",
    description:
        "Bookmark favorites, save titles for later, and take personalized notes with our built-in markdown editor. Organize your entertainment your way.",
  ),
  OnboardingModel(
    img1: Assets.images.onboarding1.path,
    title: "Save Your Picks",
    description:
        "Test your movie knowledge with fun, pressure-free quizzes. Capture your viewing experiences with thoughtful notes; everything saved locally, just for you.",
  ),
];
