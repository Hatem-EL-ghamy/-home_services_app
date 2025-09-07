import 'package:flutter/widgets.dart';
import 'package:home_services1/core/theming/colors.dart';

// Widget لخلفية متدرجة الألوان

class GradientBackground extends StatelessWidget {
  final AnimationController backgroundController;
  final Widget child;

  const GradientBackground({
    super.key,
    required this.backgroundController,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.PrimaryColor,
            AppColors.PrimaryColor.withOpacity(0.8),
            AppColors.PrimaryColor.withOpacity(0.6),
          ],
        ),
      ),
      child: child,
    );
  }
}
