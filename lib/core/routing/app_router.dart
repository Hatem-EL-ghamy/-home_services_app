import 'package:go_router/go_router.dart';
import 'package:home_services1/core/routing/routers.dart';
import 'package:home_services1/features/Auth/ui/otp_screen.dart';
import 'package:home_services1/features/Auth/ui/login_screen.dart';
import 'package:home_services1/features/Auth/ui/register_screen.dart';
import 'package:home_services1/features/SplashScreen/ui/splash_screen.dart';
import 'package:home_services1/features/onboarding/ui/allIn_one_screen.dart';
import 'package:home_services1/features/onboarding/ui/onboarding_screen1.dart';
import 'package:home_services1/features/onboarding/ui/easy_process_screen.dart';
import 'package:home_services1/features/onboarding/ui/expert_people_screen.dart';

class AppRouter {
  static GoRouter goRouter = GoRouter(
    initialLocation: RoutersString.SplashScreen,
    routes: [
      GoRoute(
        path: RoutersString.SplashScreen,
        name: RoutersString.SplashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: RoutersString.OnboardingScreen,
        name: RoutersString.OnboardingScreen,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: RoutersString.EasyProcessScreen,
        name: RoutersString.EasyProcessScreen,
        builder: (context, state) => EasyProcessScreen(),
      ),
      GoRoute(
        path: RoutersString.ExpertPeopleScreen,
        name: RoutersString.ExpertPeopleScreen,
        builder: (context, state) => ExpertPeopleScreen(),
      ),
      GoRoute(
        path: RoutersString.AllInOneScreen,
        name: RoutersString.AllInOneScreen,
        builder: (context, state) => AllInOneScreen(),
      ),
      GoRoute(
        path: RoutersString.LoginScreen,
        name: RoutersString.LoginScreen,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: RoutersString.RegisterScreen,
        name: RoutersString.RegisterScreen,
        builder: (context, state) => RegisterScreen(),
      ),
      GoRoute(
        path: RoutersString.OtpScreen,
        name: RoutersString.OtpScreen,
        builder: (context, state) {
          final phone = state.extra as String; // استقبل الرقم من extra
          return OTPScreen(phone: phone);
        },
      ),
    ],
  );
}
