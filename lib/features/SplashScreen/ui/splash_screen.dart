import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services1/features/SplashScreen/ui/widget/main_content.dart';
import 'package:home_services1/features/SplashScreen/ui/widget/floating_icons.dart';
import 'package:home_services1/features/SplashScreen/ui/widget/gradient_background.dart';
import 'package:home_services1/features/SplashScreen/ui/widget/particle_background.dart';

// Widget الرئيسي لشاشة البداية مع الأنيميشن المتقدم
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _backgroundController;
  late AnimationController _textController;
  late Animation<double> _logoScale;
  late Animation<double> _logoRotation;
  late Animation<double> _backgroundOpacity;
  late Animation<Offset> _logoSlide;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _startAnimationSequence();
  }

//التحكم فى سرعه الانتقال
  void _initializeAnimations() {
    _logoController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _backgroundController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _textController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _logoScale = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _logoController, curve: Curves.elasticOut));

    _logoRotation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _logoController, curve: Curves.easeInOut));

    _backgroundOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _backgroundController, curve: Curves.easeIn));

    _logoSlide = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero)
        .animate(
            CurvedAnimation(parent: _logoController, curve: Curves.bounceOut));
  }

  void _startAnimationSequence() async {
    _backgroundController.forward();
    await Future.delayed(const Duration(milliseconds: 200));
    _logoController.forward();
    await Future.delayed(const Duration(milliseconds: 600));
    _textController.forward();
    await Future.delayed(const Duration(milliseconds: 800));
    if (mounted) {
      context.go('/OnboardingScreen');
    }
  }

  @override
  void dispose() {
    _logoController.dispose();
    _backgroundController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        backgroundController: _backgroundController,
        child: Stack(
          children: [
            // Widget للجزيئات المتحركة في الخلفية
            ParticleBackground(backgroundController: _backgroundController),

            // Widget المحتوى الرئيسي
            MainContent(
              logoController: _logoController,
              textController: _textController,
              logoScale: _logoScale,
              logoRotation: _logoRotation,
              logoSlide: _logoSlide,
            ),

            // Widget الأيقونات العائمة
            FloatingIcons(),
          ],
        ),
      ),
    );
  }
}
