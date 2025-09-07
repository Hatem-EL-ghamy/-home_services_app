import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services1/features/Auth/ui/widget/custom_button.dart';
import 'package:home_services1/features/Auth/ui/reset_password_screen.dart';
import 'package:home_services1/features/Auth/ui/widget/custom_app_bar.dart';
import 'package:home_services1/features/Auth/ui/widget/screen_description.dart';
import 'package:home_services1/features/Auth/ui/widget/custom_phone_field%20.dart';
 

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _phoneController.text = "01271964322";
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
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

  void _resetPassword() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      // محاكاة طلب API
      await Future.delayed(const Duration(seconds: 2));

      setState(() {
        _isLoading = false;
      });

      if (mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResetPasswordScreen(
              phoneNumber: _phoneController.text,
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: const CustomAppBar(title: 'Forget Password'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              const ScreenDescription(
                title: 'Enter your Phone Number',
                subtitle: 'to reset password',
              ),
              SizedBox(height: 40.h),
              CustomPhoneField(
                controller: _phoneController,
                validator: _validatePhone,
              ),
              SizedBox(height: 40.h),
              CustomButton(
                text: 'Reset Password',
                onPressed: _resetPassword,
                isLoading: _isLoading,
              ),
            ],
          ),
        ),
      ),
    );
  }
}