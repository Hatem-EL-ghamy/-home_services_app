import 'package:flutter/material.dart';
import 'package:home_services1/core/theming/colors.dart';
import 'package:home_services1/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services1/core/widgets/custome_text_button.dart';
import 'package:home_services1/core/widgets/custoum_elevated_button.dart';
import 'package:home_services1/features/onboarding/ui/allIn_one_screen.dart';

class ExpertPeopleScreen extends StatelessWidget {
  const ExpertPeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.black54),
        ),
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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Cleaning Service Illustration
                    SizedBox(
                      height: 320.h,
                      width: 320.w,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Background image
                          Image.asset(
                            'assets/images/EmptyState.png',
                            width: 390.w,
                            height: 291.h,
                            fit: BoxFit.contain,
                          ),

                          // Foreground image with shadow
                          Positioned(
                            bottom: 60.h,
                            right: 40.w,
                            child: Container(
                              child: Image.asset(
                                'assets/images/CleaningService.png',
                                width: 240.w,
                                height: 260.h,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 30.h),

                    // Title
                    Text(
                      'Expert People',
                      style: AppStyles.fontH134Blackw700,
                    ),
                    SizedBox(height: 16.h),

                    // Description
                    Text(
                      'We have the best in class individuals\nworking just for you. They are well\ntrained and capable of handling\nanything you need.',
                      textAlign: TextAlign.center,
                      style: AppStyles.font16greyw500,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8,
                    height: 8,
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
                  SizedBox(width: 8.w),
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
                      builder: (context) => AllInOneScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 106.h),
            ],
          ),
        ),
      ),
    );
  }
}
