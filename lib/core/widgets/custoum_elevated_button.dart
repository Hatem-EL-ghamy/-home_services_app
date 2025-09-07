import 'package:flutter/material.dart';
import 'package:home_services1/core/theming/colors.dart';
import 'package:home_services1/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustoumElevatedButton extends StatelessWidget {
  const CustoumElevatedButton({
    super.key,
    // required this.selectedLanguage,
    required this.onPressed, // إضافة parameter للـ function
    this.buttonText = 'Enter', // النص الافتراضي للزر
  });
  final VoidCallback onPressed; // تعريف نوع الـ function
  final String buttonText; // النص القابل للتخصيص

  // final String selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 388.w,
      height: 60.h,
      margin: EdgeInsets.only(bottom: 30.h),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.PrimaryColor,
          foregroundColor: AppColors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text(
          buttonText,
          style: AppStyles.font18whitew700,
        ),
      ),
    );
  }
}
