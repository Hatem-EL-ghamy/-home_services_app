import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPhoneField extends StatelessWidget {
  final TextEditingController controller;

  const CustomPhoneField({
    super.key,
    required this.controller, required String? Function(String? value) validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Phone',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12.h),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Colors.green, width: 1),
          ),
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.phone,
            style: TextStyle(fontSize: 16.sp),
            decoration: InputDecoration(
              hintText: 'Enter phone number',
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              suffixIcon: Icon(
                Icons.phone,
                color: Colors.grey[400],
                size: 20.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
