import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_services1/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle onboardingPageTitleStyle = GoogleFonts.quicksand(
    fontWeight: FontWeight.w700,
    fontSize: 48.sp,
    height: 1.2,
    letterSpacing: 1.sp,
    textStyle: const TextStyle(
      textBaseline: TextBaseline.alphabetic,
    ),
  );

  static TextStyle font20Blackw700 = GoogleFonts.quicksand(
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
    height: 1.2,
    color: Colors.black,
    letterSpacing: 0.sp,
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  );
  static TextStyle font16Blackw600 = GoogleFonts.quicksand(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    height: 1.2,
    color: Colors.black,
    letterSpacing: 0.sp,
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  );

  static TextStyle font12greyw400 = GoogleFonts.quicksand(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    height: 1.2,
    color: Colors.grey,
    letterSpacing: 0.sp,
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  );

  static TextStyle font18whitew700 = GoogleFonts.quicksand(
    fontWeight: FontWeight.w700,
    fontSize: 18.sp,
    height: 1.2,
    color: AppColors.white,
    letterSpacing: 0.sp,
    // decoration: TextDecoration.underline,
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  );

  static TextStyle font16greyw500 = GoogleFonts.quicksand(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    height: 1.2,
    color: Colors.grey,
    letterSpacing: 0.sp,
    textStyle: const TextStyle(
        // fontWeight: FontWeight.w500,
        ),
  );

  static TextStyle fontH134Blackw700 = GoogleFonts.quicksand(
    fontWeight: FontWeight.w700,
    fontSize: 34.sp,
    height: 1.2,
    color: Colors.black,
    letterSpacing: 0.sp,
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  );
}
/* font-family: Quicksand;
font-weight: 700;
font-style: Bold;
font-size: 34px;
leading-trim: NONE;
line-height: 46px;
letter-spacing: 0px;





*/
