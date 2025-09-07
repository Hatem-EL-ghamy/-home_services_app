import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:home_services1/core/theming/colors.dart';

// Widget لأيقونة عائمة واحدة مع تأثيرات الحركة واللمعان

class FloatingIcon extends StatelessWidget {
  final IconData icon;
  final int delay;

  const FloatingIcon({
    super.key,
    required this.icon,
    required this.delay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.white.withOpacity(0.1),
        border: Border.all(
          color: AppColors.white.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Icon(
        icon,
        color: AppColors.white.withOpacity(0.7),
        size: 24,
      ),
    )
        .animate(delay: (delay * 500).ms)
        .fadeIn(duration: 1000.ms)
        .slideY(begin: 1, end: 0, duration: 800.ms, curve: Curves.easeOut)
        .then()
        .shimmer(duration: 2000.ms, color: AppColors.white.withOpacity(0.5))
        .animate(onPlay: (controller) => controller.repeat(reverse: true))
        .moveY(begin: 0, end: -10, duration: 2000.ms, curve: Curves.easeInOut);
  }
}
