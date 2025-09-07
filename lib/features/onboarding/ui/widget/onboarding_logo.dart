import 'package:flutter/material.dart';
import 'package:home_services1/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingLogo extends StatelessWidget {
  const OnboardingLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 139.w,
      height: 139.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38.r),
        color: AppColors.PrimaryColor,
      ),
      child: Center(
        child: Image.asset(
          'assets/images/SplashScreen.png',
          width: 80.w,
          height: 80.h,
          color: AppColors.white,
        ),
      ),
    );
  }
}
