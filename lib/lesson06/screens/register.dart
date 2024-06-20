import 'package:dastan/lesson06/screens/login_screen.dart';
import 'package:dastan/lesson06/widgets/auth_widget.dart';
import 'package:dastan/lesson06/widgets/elevated_button_widget.dart';
import 'package:dastan/lesson06/widgets/navigation.dart';
import 'package:flutter/material.dart';

import '../widgets/container_widget.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            container(
                height: 300,
                width: double.infinity,
                image: 'assets/calathea.jpg'
            ),
            SizedBox(height: 20,),
            authWidget(text: 'Email', icon: Icons.email),
            const SizedBox(
              height: 20,
            ),
            authWidget(
              text: 'Password',
              icon: Icons.lock,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            authWidget(
              text: 'Confirm password',
              icon: Icons.lock,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            elevatedButtonWidget(text: 'Register', textColor: Colors.redAccent, onTap: (){
              navigation(context, const LoginScreen());
            })
          ],
        ),
      ),
    );
  }
}
