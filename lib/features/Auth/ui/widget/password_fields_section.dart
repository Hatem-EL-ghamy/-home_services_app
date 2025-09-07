import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services1/features/Auth/ui/widget/custom_password_field.dart';

class PasswordFieldsSection extends StatelessWidget {
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final bool isPasswordVisible;
  final bool isConfirmPasswordVisible;
  final VoidCallback onPasswordVisibilityToggle;
  final VoidCallback onConfirmPasswordVisibilityToggle;

  const PasswordFieldsSection({
    super.key,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.isPasswordVisible,
    required this.isConfirmPasswordVisible,
    required this.onPasswordVisibilityToggle,
    required this.onConfirmPasswordVisibilityToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomPasswordField(
          label: 'Password',
          hintText: 'Enter Your Password',
          controller: passwordController,
          isPasswordVisible: isPasswordVisible,
          onVisibilityToggle: onPasswordVisibilityToggle,
        ),
        SizedBox(height: 24.h),
        CustomPasswordField(
          label: 'Confirm Password',
          hintText: 'Enter Your Confirm Password',
          controller: confirmPasswordController,
          isPasswordVisible: isConfirmPasswordVisible,
          onVisibilityToggle: onConfirmPasswordVisibilityToggle,
        ),
      ],
    );
  }
}