import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter/gestures.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/common_componenet/common_snackbar.dart';
import 'package:moviesbox/src/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:moviesbox/src/presentation/pages/settings/setting_screen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  void initState() {
    super.initState();
    requestATT();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        child: BlocBuilder<DashboardBloc, DashboardState>(
          buildWhen: (previous, current) =>
              previous.isChecked != current.isChecked ||
              previous.termsOfService != current.termsOfService ||
              previous.privacyPolicy != current.privacyPolicy,
          builder: (context, state) {
            return Column(
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

                //Write terms and privacy policy here using rich text
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Row(
                    children: [
                      Checkbox(
                        value: state.isChecked,
                        checkColor: Colors.white,
                        activeColor: state.isChecked
                            ? Theme.of(context).primaryColor
                            : null,
                        side: BorderSide(
                          color: state.isChecked
                              ? Theme.of(context).primaryColor
                              : Colors.white70,
                        ),

                        onChanged: (s) => context.read<DashboardBloc>().add(
                          const DashboardEvent.updateCheckboxState(),
                        ),
                      ),
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: context.textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                            ),
                            children: [
                              const TextSpan(
                                text:
                                    'By clicking "Get Started", you agree to the ',
                              ),
                              TextSpan(
                                text: 'Terms of Service',
                                style: const TextStyle(
                                  color: Colors.red,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.red,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launchExternalUrl(
                                      state.termsOfService ?? "",
                                      context,
                                    );
                                  },
                              ),
                              const TextSpan(text: ' and '),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: const TextStyle(
                                  color: Colors.red,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.red,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launchExternalUrl(
                                      state.privacyPolicy ?? "",
                                      context,
                                    );
                                  },
                              ),
                              const TextSpan(text: '.'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Get Started button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomElevatedButton(
                    onTap: () => state.isChecked
                        ? GoRouter.of(context).goNamed(AppRoutes.onboardingName)
                        : showCustomSnackBar(
                            context,
                            message:
                                "Please accept the terms and privacy policy",
                            type: SnackBarType.error,
                          ),
                    label: "Get Started",

                    height: 50,
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

Future<void> requestATT() async {
  final status = await AppTrackingTransparency.trackingAuthorizationStatus;
  if (status == TrackingStatus.notDetermined) {
    final result = await AppTrackingTransparency.requestTrackingAuthorization();
    debugPrint("ATT status: $result");
  }
}
