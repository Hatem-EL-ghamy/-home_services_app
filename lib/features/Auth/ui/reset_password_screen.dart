import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services1/features/Auth/ui/login_screen.dart';
import 'package:home_services1/features/Auth/ui/widget/custom_button.dart';
import 'package:home_services1/features/Auth/ui/widget/custom_app_bar.dart';
import 'package:home_services1/features/Auth/ui/widget/screen_description.dart';
import 'package:home_services1/features/Auth/ui/widget/password_fields_section.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key, required String phoneNumber});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _savePassword() {
    if (_passwordController.text == _confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password saved successfully!'),
          backgroundColor: Colors.green,
        ),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Passwords do not match!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: const CustomAppBar(title: 'Reset Password'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            const ScreenDescription(
              title: 'Create strong and secured',
              subtitle: 'new password',
            ),
            SizedBox(height: 40.h),
            PasswordFieldsSection(
              passwordController: _passwordController,
              confirmPasswordController: _confirmPasswordController,
              isPasswordVisible: _isPasswordVisible,
              isConfirmPasswordVisible: _isConfirmPasswordVisible,
              onPasswordVisibilityToggle: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
              onConfirmPasswordVisibilityToggle: () {
                setState(() {
                  _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                });
              },
            ),
            SizedBox(height: 40.h),
            CustomButton(
              text: 'Save Password',
              onPressed: _savePassword,
            ),
          ],
        ),
      ),
    );
  }
}
