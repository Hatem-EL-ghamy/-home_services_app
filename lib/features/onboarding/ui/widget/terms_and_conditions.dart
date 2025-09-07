import 'package:flutter/material.dart';
import 'package:home_services1/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 



class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'By creating an account, you agree to our\n',
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.grey[600],
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: 'Terms and Conditions',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.PrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}