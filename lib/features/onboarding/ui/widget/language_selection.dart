import 'package:flutter/widgets.dart';
import 'package:home_services1/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services1/features/onboarding/ui/widget/language_option.dart';


class LanguageSelection extends StatelessWidget {
  const LanguageSelection({
    super.key,
    required this.selectedLanguage,
    required this.onLanguageChanged,
  });

  final String selectedLanguage;
  final ValueChanged<String> onLanguageChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Select Language', style: AppStyles.font20Blackw700),
        SizedBox(height: 20.h),
        LanguageOption(
          language: 'English',
          selectedLanguage: selectedLanguage,
          onTap: () => onLanguageChanged('English'),
        ),
        SizedBox(height: 12.h),
        LanguageOption(
          language: 'Arabic',
          selectedLanguage: selectedLanguage,
          onTap: () => onLanguageChanged('Arabic'),
        ),
      ],
    );
  }
}