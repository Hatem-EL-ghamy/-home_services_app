import 'package:flutter/material.dart';
import 'package:home_services1/core/theming/colors.dart';
import 'package:home_services1/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageOption extends StatelessWidget {
  const LanguageOption({
    super.key,
    required this.language,
    required this.selectedLanguage,
    required this.onTap,
  });

  final String language;
  final String selectedLanguage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedLanguage == language;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey[50] : AppColors.grey.withOpacity(.2),
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: isSelected
                ? AppColors.PrimaryColor
                : AppColors.grey.withOpacity(.2),
            width: 1.5.w,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              language,
              style: AppStyles.font16Blackw600,
            ),
            Container(
              width: 20.w,
              height: 20.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected
                      ? AppColors.PrimaryColor
                      : AppColors.grey.withOpacity(.2),
                  width: 2,
                ),
                color: isSelected ? AppColors.PrimaryColor : Colors.transparent,
              ),
              child: isSelected
                  ? Icon(
                      Icons.circle,
                      size: 8.sp,
                      color: AppColors.white,
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
