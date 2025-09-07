import 'package:flutter/widgets.dart';
import 'package:home_services1/features/SplashScreen/ui/widget/animated_logo.dart';
import 'package:home_services1/features/SplashScreen/ui/widget/animated_title.dart';
import 'package:home_services1/features/SplashScreen/ui/widget/animated_subtitle.dart';
import 'package:home_services1/features/SplashScreen/ui/widget/animated_loading_indicator.dart';


// Widget للمحتوى الرئيسي (اللوجو والنص)

class MainContent extends StatelessWidget {
  final AnimationController logoController;
  final AnimationController textController;
  final Animation<double> logoScale;
  final Animation<double> logoRotation;
  final Animation<Offset> logoSlide;

  const MainContent({
    super.key,
    required this.logoController,
    required this.textController,
    required this.logoScale,
    required this.logoRotation,
    required this.logoSlide,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Widget اللوجو المتحرك
          AnimatedLogo(
            logoController: logoController,
            logoScale: logoScale,
            logoRotation: logoRotation,
            logoSlide: logoSlide,
          ),
          
          const SizedBox(height: 40),
          
          // Widget النص المتحرك
          AnimatedTitle(textController: textController),
          
          const SizedBox(height: 20),
          
          // Widget العنوان الفرعي
          AnimatedSubtitle(textController: textController),
          
          const SizedBox(height: 60),
          
          // Widget مؤشر التحميل
          AnimatedLoadingIndicator(textController: textController),
        ],
      ),
    );
  }
}