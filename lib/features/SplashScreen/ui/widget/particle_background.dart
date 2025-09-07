import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:home_services1/core/theming/colors.dart';


// Widget للجزيئات المتحركة في الخلفية لإضافة تأثير بصري

class ParticleBackground extends StatelessWidget {
  final AnimationController backgroundController;

  const ParticleBackground({
    super.key,
    required this.backgroundController,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(20, (index) => _buildParticle(context, index)),
    );
  }

  Widget _buildParticle(BuildContext context, int index) {
    return AnimatedBuilder(
      animation: backgroundController,
      builder: (context, child) {
        return Positioned(
          left: (index * 25.0) % MediaQuery.of(context).size.width,
          top: (index * 35.0) % MediaQuery.of(context).size.height,
          child: Transform.translate(
            offset: Offset(
              50 * backgroundController.value * (index % 2 == 0 ? 1 : -1),
              30 * backgroundController.value,
            ),
            child: Opacity(
              opacity: backgroundController.value * 0.3,
              child: Container(
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white.withOpacity(0.6),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}