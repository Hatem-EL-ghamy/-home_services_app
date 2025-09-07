import 'package:flutter/material.dart';
import 'package:home_services1/features/Auth/ui/login_screen.dart';

class CustomeTextButton extends StatelessWidget {
  const CustomeTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
      child: Text(
        'Skip',
        style: TextStyle(
          color: Colors.orange,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
