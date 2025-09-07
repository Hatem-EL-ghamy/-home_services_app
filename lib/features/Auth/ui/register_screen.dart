import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services1/features/Auth/ui/otp_screen.dart';
import 'package:home_services1/features/Auth/ui/widget/login_header.dart';
import 'package:home_services1/features/Auth/ui/widget/signIn_prompt.dart';
import 'package:home_services1/features/Auth/ui/widget/register_button.dart';
import 'package:home_services1/features/Auth/ui/widget/register_header.dart';
import 'package:home_services1/features/Auth/ui/widget/register_form_fields.dart';
import 'package:home_services1/features/Auth/ui/widget/social_login_buttons.dart';
 
 


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isLoading = false;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.all(24.w),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 28.h),
                  const RegisterHeader(),
                  SizedBox(height: 32.h),
                  RegisterFormFields(
                    nameController: _nameController,
                    phoneController: _phoneController,
                    passwordController: _passwordController,
                    isPasswordVisible: _isPasswordVisible,
                    onPasswordVisibilityToggle: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                  SizedBox(height: 24.h),
                  RegisterButton(
                    isLoading: _isLoading,
                    onPressed: _register,
                  ),
                  SizedBox(height: 16.h),
                  const OrDivider(),
                  SizedBox(height: 18.h),
                  SocialLoginButtons(
                    onFacebookPressed: _loginWithFacebook,
                    onGooglePressed: _loginWithGoogle,
                  ),
                  SizedBox(height: 35.h),
                  const SignInPrompt(),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _register() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      await Future.delayed(const Duration(seconds: 2));

      setState(() {
        _isLoading = false;
      });

      if (mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OTPScreen(
              phone: _phoneController.text,
            ),
          ),
        );
      }
    }
  }

  void _loginWithFacebook() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('تسجيل الدخول بالفيسبوك'),
        backgroundColor: Colors.blue,
      ),
    );
  }

  void _loginWithGoogle() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('تسجيل الدخول بجوجل'),
        backgroundColor: Colors.red,
      ),
    );
  }
}

