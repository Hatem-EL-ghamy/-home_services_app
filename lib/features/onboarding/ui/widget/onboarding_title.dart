import 'package:flutter/widgets.dart';
import 'package:home_services1/core/theming/styles.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Find Your\nHome Service',
      style: AppStyles.onboardingPageTitleStyle,
    );
  }
}