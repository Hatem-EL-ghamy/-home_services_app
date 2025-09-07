import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:home_services1/core/theming/colors.dart';

// Widget لمؤشر التحميل مع تأثير النبض

class AnimatedLoadingIndicator extends StatelessWidget {
  final AnimationController textController;

  const AnimatedLoadingIndicator({
    super.key,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: textController,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
        strokeWidth: 2,
      )
          .animate(onPlay: (controller) => controller.repeat())
          .scale(duration: 1000.ms, curve: Curves.easeInOut)
          .then()
          .scale(
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.2),
            duration: 500.ms,
          )
          .then()
          .scale(
            begin: const Offset(1.2, 1.2),
            end: const Offset(1.0, 1.0),
            duration: 500.ms,
          ),
    );
  }
}
