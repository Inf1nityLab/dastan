import 'package:flutter/material.dart';

class Lesson01 extends StatelessWidget {
  const Lesson01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            children: [
              Container(
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.cyanAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.notification_add_outlined),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
