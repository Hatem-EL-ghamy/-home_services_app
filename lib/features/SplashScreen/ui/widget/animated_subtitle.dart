import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:home_services1/core/theming/colors.dart';

// Widget للعنوان الفرعي مع تأثير الانزلاق والاختفاء التدريجي

class AnimatedSubtitle extends StatelessWidget {
  final AnimationController textController;

  const AnimatedSubtitle({
    super.key,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: textController,
        curve: Curves.easeOut,
      )),
      child: FadeTransition(
        opacity: textController,
        child:  Text(
          'Your Home Services Solution',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}