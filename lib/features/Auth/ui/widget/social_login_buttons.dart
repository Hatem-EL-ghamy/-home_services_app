import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services1/features/Auth/ui/widget/social_login_button.dart';


class SocialLoginButtons extends StatelessWidget {
  final VoidCallback onFacebookPressed;
  final VoidCallback onGooglePressed;

  const SocialLoginButtons({
    super.key,
    required this.onFacebookPressed,
    required this.onGooglePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialLoginButton(
          label: 'Facebook',
          icon: Container(
            width: 28.w,
            height: 28.h,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.facebook,
              color: Colors.white,
              size: 22.sp,
            ),
          ),
          onPressed: onFacebookPressed,
        ),
        SizedBox(height: 18.h),
        SocialLoginButton(
          label: 'Google',
          icon: Container(
            width: 28.w,
            height: 28.h,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                'G',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.sp,
                ),
              ),
            ),
          ),
          onPressed: onGooglePressed,
        ),
      ],
    );
  }
}
