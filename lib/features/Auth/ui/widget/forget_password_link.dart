import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordLink extends StatelessWidget {
  const ForgetPasswordLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Forget Password clicked')),
          );
        },
        child: Text(
          'Forget Password ?',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
