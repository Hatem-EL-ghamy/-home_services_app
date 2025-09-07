import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:home_services1/features/SplashScreen/ui/widget/floating_icon.dart';

// Widget للأيقونات العائمة حول الشاشة

class FloatingIcons extends StatelessWidget {
  const FloatingIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 100,
          right: 50,
          child: FloatingIcon(icon: Icons.home_work, delay: 0),
        ),
        Positioned(
          top: 200,
          left: 30,
          child: FloatingIcon(icon: Icons.build, delay: 1),
        ),
        Positioned(
          bottom: 150,
          right: 40,
          child: FloatingIcon(icon: Icons.cleaning_services, delay: 2),
        ),
        Positioned(
          bottom: 250,
          left: 50,
          child: FloatingIcon(icon: Icons.electrical_services, delay: 3),
        ),
      ],
    );
  }
}