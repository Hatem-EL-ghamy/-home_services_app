import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const LoginHeader({
    super.key,
    this.title = 'Login',
    this.subtitle = 'Please Enter your Phone and password\nto continue',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 28.h),
        
        // عنوان الشاشة
        Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),

        SizedBox(height: 14.h),

        // نص فرعي
        Center(
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey,
              height: 1.5,
            ),
          ),
        ),

        SizedBox(height: 18.h),
      ],
    );
  }
}

// فاصل "أو"
class OrDivider extends StatelessWidget {
  final String text;

  const OrDivider({super.key, this.text = 'OR'});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey, height: 1.h)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.sp,
            ),
          ),
        ),
        Expanded(child: Divider(color: Colors.grey, height: 1.h)),
      ],
    );
  }
}