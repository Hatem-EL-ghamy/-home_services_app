import 'package:flutter/material.dart';
import 'package:home_services1/core/helpers/app_regex.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services1/features/Auth/ui/reset_password.dart';
import 'package:home_services1/features/Auth/ui/register_screen.dart';
import 'package:home_services1/features/Auth/ui/widget/login_header.dart';
import 'package:home_services1/features/Auth/ui/widget/custom_button.dart';
import 'package:home_services1/features/Auth/ui/widget/sign_up_footer.dart';
import 'package:home_services1/features/Auth/ui/forget_password_screen.dart';
import 'package:home_services1/features/Auth/ui/widget/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // دالة تسجيل الدخول
  void _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      // محاكاة عملية تسجيل الدخول
      await Future.delayed(const Duration(seconds: 2));

      setState(() {
        _isLoading = false;
      });

      // عرض رسالة نجاح
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('تم تسجيل الدخول بنجاح'),
            backgroundColor: Colors.green,
          ),
        );
      }
    }
  }

  // دالة تسجيل الدخول بالفيسبوك
  void _loginWithFacebook() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('تسجيل الدخول بالفيسبوك'),
        backgroundColor: Colors.blue,
      ),
    );
  }

  // دالة تسجيل الدخول بجوجل
  void _loginWithGoogle() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('تسجيل الدخول بجوجل'),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.all(24.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // رأس الشاشة
                      const LoginHeader(),

                      // حقل رقم الهاتف
                      CustomTextField(
                        label: 'Phone',
                        hintText: '01271964322',
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        validator: Validators.validatePhone,
                        suffixIcon: Icons.phone,
                      ),

                      SizedBox(height: 18.h),

                      // حقل كلمة المرور
                      CustomTextField(
                        label: 'Password',
                        hintText: 'Enter Your Password',
                        controller: _passwordController,
                        validator: Validators.validatePassword,
                        isPassword: true,
                      ),

                      SizedBox(height: 16.h),

                      // رابط نسيان كلمة المرور
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ForgetPasswordScreen(),
                              ),
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
                      ),

                      SizedBox(height: 24.h),

                      // زر تسجيل الدخول
                      CustomButton(
                        text: 'Login',
                        onPressed: _login,
                        isLoading: _isLoading,
                      ),

                      SizedBox(height: 16.h),

                      // فاصل "أو"
                      const OrDivider(),

                      SizedBox(height: 18.h),

                      // زر تسجيل الدخول بالفيسبوك
                      SocialButton(
                        text: 'Facebook',
                        onPressed: _loginWithFacebook,
                        icon: SocialIcons.facebook,
                      ),

                      SizedBox(height: 18.h),

                      // زر تسجيل الدخول بجوجل
                      SocialButton(
                        text: 'Google',
                        onPressed: _loginWithGoogle,
                        icon: SocialIcons.google,
                      ),

                      SizedBox(height: 35.h),

                      // رابط إنشاء حساب جديد
                      SignUpFooter(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
