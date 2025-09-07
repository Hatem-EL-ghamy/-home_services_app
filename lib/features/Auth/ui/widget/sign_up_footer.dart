import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpFooter extends StatelessWidget {
  final String normalText;
  final String buttonText;
  final VoidCallback onPressed;

  const SignUpFooter({
    super.key,
    this.normalText = "Don't Have Account ? ",
    this.buttonText = 'Sign Up',
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            normalText,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.sp,
            ),
          ),
          GestureDetector(
            onTap: onPressed,
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.green,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}