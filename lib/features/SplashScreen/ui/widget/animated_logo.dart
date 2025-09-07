import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:home_services1/core/theming/colors.dart';

// Widget لللوجو مع تأثيرات الحركة (تكبير، دوران، انزلاق)

class AnimatedLogo extends StatelessWidget {
  final AnimationController logoController;
  final Animation<double> logoScale;
  final Animation<double> logoRotation;
  final Animation<Offset> logoSlide;

  const AnimatedLogo({
    super.key,
    required this.logoController,
    required this.logoScale,
    required this.logoRotation,
    required this.logoSlide,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: logoController,
      builder: (context, child) {
        return SlideTransition(
          position: logoSlide,
          child: Transform.scale(
            scale: logoScale.value,
            child: Transform.rotate(
              angle: logoRotation.value * 0.1,
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.white.withOpacity(0.3),
                      blurRadius: 30,
                      spreadRadius: 10,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/images/SplashScreen.png',
                  width: 120,
                  height: 120,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
