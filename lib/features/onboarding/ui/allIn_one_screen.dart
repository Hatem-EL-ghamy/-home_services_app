import 'package:flutter/material.dart';
import 'package:home_services1/core/theming/colors.dart';
import 'package:home_services1/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services1/features/Auth/ui/login_screen.dart';
import 'package:home_services1/core/widgets/custome_text_button.dart';
import 'package:home_services1/core/widgets/custoum_elevated_button.dart';

class AllInOneScreen extends StatelessWidget {
  const AllInOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: AppColors.black),
        ),
        actions: [
          CustomeTextButton(),
          SizedBox(width: 16.w),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Painting Service Illustration
                    SizedBox(
                      height: 320.h,
                      width: 320.w,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Background image
                          Image.asset(
                            'assets/images/EmptyState.png',
                            width: 310.w,
                            height: 310.h,
                            fit: BoxFit.contain,
                          ),

                          // Foreground image with shadow
                          Positioned(
                            bottom: 60.h,
                            right: 40.w,
                            child: Container(
                              child: Image.asset(
                                'assets/images/PaintingService.png',
                                width: 240,
                                height: 220,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20.h),

                    // Title
                    Text(
                      'All In One Place',
                      style: AppStyles.fontH134Blackw700,
                    ),
                    SizedBox(height: 16.h),

                    // Description
                    Text(
                        'We have all the household services\nyou need on a daily basis with\neasy access.',
                        textAlign: TextAlign.center,
                        style: AppStyles.font16greyw500),
                  ],
                ),
              ),

              // Page Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8.w,
                    height: 8.h,
                    decoration: BoxDecoration(
                      color: AppColors.grey.withOpacity(.3),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 8.h),
                  Container(
                    width: 8.w,
                    height: 8.h,
                    decoration: BoxDecoration(
                      color: AppColors.grey.withOpacity(.3),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    width: 24.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: AppColors.orange,
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 52.h),

              // Enter Button
              CustoumElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 90.h),
            ],
          ),
        ),
      ),
    );
  }
}
