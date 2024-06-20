import 'package:dastan/lesson06/screens/register.dart';
import 'package:dastan/lesson06/widgets/auth_widget.dart';
import 'package:dastan/lesson06/widgets/container_widget.dart';
import 'package:dastan/lesson06/widgets/elevated_button_widget.dart';
import 'package:dastan/lesson06/widgets/navigation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            container(
              height: 200,
              width: double.infinity,
              image: 'assets/cactus.jpg'
            ),
            SizedBox(height: 40,),
            authWidget(
                text: 'Email', color: Colors.cyanAccent, icon: Icons.email),
            const SizedBox(
              height: 10,
            ),
            authWidget(
              text: 'Password',
              color: Colors.white,
              icon: Icons.lock,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            elevatedButtonWidget(
                text: 'Login',
                textColor: Colors.white,
                onTap: () {
                  navigation(
                    context,
                    Register(),
                  );
                })
          ],
        ),
      ),
    );
  }
}
