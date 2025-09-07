import 'package:flutter/material.dart';
import 'package:home_services1/core/theming/colors.dart';
import 'package:home_services1/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services1/core/widgets/custome_text_button.dart';
import 'package:home_services1/core/widgets/custoum_elevated_button.dart';
import 'package:home_services1/features/onboarding/ui/expert_people_screen.dart';

class EasyProcessScreen extends StatelessWidget {
  const EasyProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          CustomeTextButton(),
          SizedBox(width: 16.h),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              // Add some top spacing
              SizedBox(height: 30.h),

              // Images from assets - larger size
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
                          'assets/images/SuccessState.png',
                          width: 240.w,
                          height: 260.r,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h),

              // Title
              Text('Easy Process', style: AppStyles.fontH134Blackw700),
              SizedBox(height: 16.h),

              // Description
              Text(
                  'Find all your house needs in one place.\nWe provide every service to make your\nhome experience smooth.',
                  textAlign: TextAlign.center,
                  style: AppStyles.font16greyw500),

              // Spacer(),
              SizedBox(height: 71.h),

              // Page Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 24.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: AppColors.orange,
                      borderRadius: BorderRadius.circular(2.r),
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
                  SizedBox(width: 8.h),
                  Container(
                    width: 8.w,
                    height: 8.h,
                    decoration: BoxDecoration(
                      color: AppColors.grey.withOpacity(.3),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 52.h),

              // Next Button

              CustoumElevatedButton(
                buttonText: 'Next',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExpertPeopleScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
