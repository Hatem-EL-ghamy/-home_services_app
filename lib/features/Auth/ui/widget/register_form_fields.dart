import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services1/features/Auth/ui/widget/custom_text_field.dart';
import 'package:home_services1/features/Auth/ui/widget/password_text_field.dart';
import 'package:home_services1/features/Auth/ui/widget/forget_password_link.dart';

class RegisterFormFields extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final bool isPasswordVisible;
  final VoidCallback onPasswordVisibilityToggle;

  const RegisterFormFields({
    super.key,
    required this.nameController,
    required this.phoneController,
    required this.passwordController,
    required this.isPasswordVisible,
    required this.onPasswordVisibilityToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          label: 'Full Name',
          hintText: 'Hatem Nasser Esmail',
          controller: nameController,
          validator: _validateName,
          keyboardType: TextInputType.name,
          suffixIcon: Icons.person_outline,
        ),
        SizedBox(height: 18.h),
        CustomTextField(
          label: 'Phone',
          hintText: '01271964322',
          controller: phoneController,
          validator: _validatePhone,
          keyboardType: TextInputType.phone,
          suffixIcon: Icons.phone,
        ),
        SizedBox(height: 18.h),
        PasswordTextField(
          label: 'Password',
          hintText: 'Enter Your Password',
          controller: passwordController,
          validator: _validatePassword,
          isPasswordVisible: isPasswordVisible,
          onVisibilityToggle: onPasswordVisibilityToggle,
        ),
        SizedBox(height: 16.h),
        const ForgetPasswordLink(),
      ],
    );
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال الاسم';
    }

    if (value.length < 3) {
      return 'الاسم يجب أن يكون 3 أحرف على الأقل';
    }

    if (!RegExp(r'^[a-zA-Z\u0600-\u06FF\s]+$').hasMatch(value)) {
      return 'الاسم يجب أن يحتوي على أحرف فقط';
    }

    return null;
  }

  String? _validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال رقم الهاتف';
    }

    if (value.length < 10) {
      return 'رقم الهاتف يجب أن يكون 10 أرقام على الأقل';
    }

    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'يجب أن يحتوي رقم الهاتف على أرقام فقط';
    }

    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال كلمة المرور';
    }
    if (value.length < 6) {
      return 'كلمة المرور يجب أن تكون 6 أحرف على الأقل';
    }
    return null;
  }
}