import 'package:moviesbox/export.dart';

/// Widget for displaying onboarding screens with image, title, description, and navigation buttons.
class OnboardingWidget extends StatelessWidget {
  final OnboardingModel onboardingModel;
  final String label;
  final VoidCallback onNextPressed;
  final VoidCallback onBackPressed;
  final int index;

  const OnboardingWidget({
    super.key,
    required this.onboardingModel,
    required this.label,
    required this.onNextPressed,
    required this.onBackPressed,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        // Background image
        Container(
          constraints: BoxConstraints.tight(size),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(onboardingModel.img1),

              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        // Bottom overlay with content
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(24.0),
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(RADIUS * 2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  onboardingModel.title,

                  style: context.textTheme.headlineMedium?.copyWith(
                    color: context.theme.primaryColor,

                    fontSize: 24,
                  ),
                ),
                10.hx,
                // Description
                Text(
                  onboardingModel.description,
                  style: context.textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                20.hx,
                // Navigation buttons
                Row(
                  children: [
                    if (index > 0)
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(RADIUS),
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          onPressed: onBackPressed,
                          color: Colors.red,
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    // Next/Continue button
                    Flexible(
                      child: CustomElevatedButton(
                        label: label,
                        onTap: onNextPressed,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
