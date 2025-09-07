import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 


class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Register',
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 14.h),
        Center(
          child: Text(
            'Please Enter your Phone and password\nto continue',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
