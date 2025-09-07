// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:home_services1/features/Auth/ui/login_screen.dart';

// // First Screen - Forget Password (Phone Number Input)
// class ForgetPasswordScreen extends StatefulWidget {
//   const ForgetPasswordScreen({super.key});

//   @override
//   _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
// }

// class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
//   final TextEditingController _phoneController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _phoneController.text = "01271964322";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[50],
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: Text(
//           'Forget Password',
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 18.sp,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 24.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 40.h),
//             Center(
//               child: Column(
//                 children: [
//                   Text(
//                     'Enter your Phone Number',
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       color: Colors.grey[600],
//                     ),
//                   ),
//                   SizedBox(height: 4.h),
//                   Text(
//                     'to reset password',
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       color: Colors.grey[600],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 40.h),
//             Text(
//               'Phone',
//               style: TextStyle(
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(height: 12.h),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.grey[100],
//                 borderRadius: BorderRadius.circular(8.r),
//                 border: Border.all(color: Colors.green, width: 1),
//               ),
//               child: TextField(
//                 controller: _phoneController,
//                 keyboardType: TextInputType.phone,
//                 style: TextStyle(fontSize: 16.sp),
//                 decoration: InputDecoration(
//                   hintText: 'Enter phone number',
//                   border: InputBorder.none,
//                   contentPadding: EdgeInsets.symmetric(
//                     horizontal: 16.w,
//                     vertical: 16.h,
//                   ),
//                   suffixIcon: Icon(
//                     Icons.phone,
//                     color: Colors.grey[400],
//                     size: 20.sp,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 40.h),
//             SizedBox(
//               width: double.infinity,
//               height: 52.h,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ResetPasswordScreen(),
//                     ),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.r),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: Text(
//                   'Reset Password',
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Second Screen - Reset Password (New Password Input)
// class ResetPasswordScreen extends StatefulWidget {
//   const ResetPasswordScreen({super.key});

//   @override
//   _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
// }

// class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController =
//       TextEditingController();
//   bool _isPasswordVisible = false;
//   bool _isConfirmPasswordVisible = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[50],
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: Text(
//           'Reset Password',
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 18.sp,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 24.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 40.h),
//             Center(
//               child: Column(
//                 children: [
//                   Text(
//                     'Create strong and secured',
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       color: Colors.grey[600],
//                     ),
//                   ),
//                   SizedBox(height: 4.h),
//                   Text(
//                     'new password',
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       color: Colors.grey[600],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 40.h),
//             Text(
//               'Password',
//               style: TextStyle(
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(height: 12.h),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.grey[100],
//                 borderRadius: BorderRadius.circular(8.r),
//               ),
//               child: TextField(
//                 controller: _passwordController,
//                 obscureText: !_isPasswordVisible,
//                 style: TextStyle(fontSize: 16.sp),
//                 decoration: InputDecoration(
//                   hintText: 'Enter Your Password',
//                   hintStyle: TextStyle(color: Colors.grey[500]),
//                   border: InputBorder.none,
//                   contentPadding: EdgeInsets.symmetric(
//                     horizontal: 16.w,
//                     vertical: 16.h,
//                   ),
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       _isPasswordVisible
//                           ? Icons.visibility
//                           : Icons.visibility_off,
//                       color: Colors.grey[400],
//                       size: 20.sp,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         _isPasswordVisible = !_isPasswordVisible;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 24.h),
//             Text(
//               'Confirm Password',
//               style: TextStyle(
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(height: 12.h),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.grey[100],
//                 borderRadius: BorderRadius.circular(8.r),
//               ),
//               child: TextField(
//                 controller: _confirmPasswordController,
//                 obscureText: !_isConfirmPasswordVisible,
//                 style: TextStyle(fontSize: 16.sp),
//                 decoration: InputDecoration(
//                   hintText: 'Enter Your Confirm Password',
//                   hintStyle: TextStyle(color: Colors.grey[500]),
//                   border: InputBorder.none,
//                   contentPadding: EdgeInsets.symmetric(
//                     horizontal: 16.w,
//                     vertical: 16.h,
//                   ),
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       _isConfirmPasswordVisible
//                           ? Icons.visibility
//                           : Icons.visibility_off,
//                       color: Colors.grey[400],
//                       size: 20.sp,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 40.h),
//             SizedBox(
//                 width: double.infinity,
//                 height: 52.h,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Validate passwords match
//                     if (_passwordController.text ==
//                         _confirmPasswordController.text) {
//                       // عرض رسالة نجاح
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                           content: Text('Password saved successfully!'),
//                           backgroundColor: Colors.green,
//                         ),
//                       );

//                       // الانتقال إلى شاشة تسجيل الدخول
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const LoginScreen(),
//                         ),
//                       );
//                     } else {
//                       // عرض رسالة خطأ
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                           content: Text('Passwords do not match!'),
//                           backgroundColor: Colors.red,
//                         ),
//                       );
//                     }
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8.r),
//                     ),
//                     elevation: 0,
//                   ),
//                   child: Text(
//                     'Save Password',
//                     style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
//                     ),
//                   ),
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }
