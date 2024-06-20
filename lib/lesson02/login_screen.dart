import 'package:dastan/lesson01/lesson01.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool eyes = true;

  final String email = 'baias@mail.ru';
  final String password = '1234567';

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff2f9fe),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.deepPurple,
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                      blurRadius: 0.5,
                      offset: const Offset(0, 2),
                    )
                  ]),
              child: TextFormField(
                controller: emailController,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "Email can't be empty";
                  }
                  if (!text.contains('@')) {
                    return 'Please enter correct email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  prefixIcon: const Icon(Icons.email_outlined),
                  hintText: 'Email',
                  // labelText: 'email',
                  //helperText: 'Email',

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: h),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 1,
                        blurRadius: 0.5,
                        offset: const Offset(0, 2),
                      )
                    ]),
                child: TextFormField(
                  controller: passwordController,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "Password can't be empty";
                    }
                    if (text.length < 6) {
                      return 'Password must be  than 6';
                    }
                    return null;
                  },
                  obscureText: eyes,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 20),
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            eyes = !eyes;
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye_outlined)),
                    hintText: 'Password',
                    // labelText: 'email',
                    //helperText: 'Email',

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() &&
                      emailController.text == email &&
                      passwordController.text == password) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Lesson01()));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.grey),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.grey),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
