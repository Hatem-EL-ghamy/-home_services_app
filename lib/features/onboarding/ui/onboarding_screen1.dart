import 'package:flutter/material.dart';
import 'package:home_services1/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services1/core/widgets/custoum_elevated_button.dart';
import 'package:home_services1/features/onboarding/ui/easy_process_screen.dart';
import 'package:home_services1/features/onboarding/ui/widget/onboarding_logo.dart';
import 'package:home_services1/features/onboarding/ui/widget/onboarding_title.dart';
import 'package:home_services1/features/onboarding/ui/widget/language_selection.dart';
import 'package:home_services1/features/onboarding/ui/widget/terms_and_conditions.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  String selectedLanguage = 'English';

  void _onLanguageChanged(String language) {
    setState(() {
      selectedLanguage = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 113.h),
              const OnboardingLogo(),
              SizedBox(height: 40.h),
              const OnboardingTitle(),
              SizedBox(height: 80.h),
              LanguageSelection(
                selectedLanguage: selectedLanguage,
                onLanguageChanged: _onLanguageChanged,
              ),
              const Spacer(),
              const TermsAndConditions(),
              CustoumElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EasyProcessScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 35.h),
            ],
          ),
        ),
      ),
    );
  }
}
