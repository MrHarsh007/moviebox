import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/presentation/bloc/dashboard/dashboard_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DashboardBloc>().add(const DashboardEvent.fetchSettingData());
    navigateToOnboarding();
  }

  void navigateToOnboarding() {
    // Fetch the first time launch status from shared preferences
    final bool isFirstTimeLaunch =
        SharedPreferenceHelper().getBool(
          LocalStorageConstants.isFirstTimeLaunch,
        ) ??
        true;
    debugPrint("Is first time launch: $isFirstTimeLaunch");
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        if (isFirstTimeLaunch) {
          GoRouter.of(context).goNamed(AppRoutes.getStartedName);
        } else {
          GoRouter.of(context).goNamed(AppRoutes.dashboardName);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),

          Center(
            child: FadeIn(
              duration: const Duration(milliseconds: 1500),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Movies',
                      style: context.textTheme.headlineMedium?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Box',
                      style: context.textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 55.0),
              child: CommonLoader(),
            ),
          ),
        ],
      ),
    );
  }
}
