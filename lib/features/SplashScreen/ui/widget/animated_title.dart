import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:home_services1/core/theming/colors.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

// Widget للعنوان الرئيسي مع تأثير الكتابة التدريجية

class AnimatedTitle extends StatelessWidget {
  final AnimationController textController;

  const AnimatedTitle({
    super.key,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: textController,
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            'LABOR',
            textStyle: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              letterSpacing: 4,
            ),
            speed: const Duration(milliseconds: 200),
          ),
        ],
        totalRepeatCount: 1,
      ),
    );
  }
}
