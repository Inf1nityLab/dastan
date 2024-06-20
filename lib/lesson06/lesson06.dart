import 'package:flutter/material.dart';

class Lesson06 extends StatefulWidget {
  const Lesson06({super.key});

  @override
  State<Lesson06> createState() => _Lesson06State();
}

class _Lesson06State extends State<Lesson06> {
  // TODO: String, int, double, bool Примитивные типы данных c DART
  String name = 'Baias';
  int age = 24;
  double weight = 65.98;
  bool isLike = false;

  // TODO: ПЕРЕМЕННЫЕ с FLUTTER
  Container home = Container(
    height: 100,
    width: 100,
    color: Colors.deepPurple,
  );

  Text k = Text('Hello');

  // TODO: FUNCTION()
  // TODO: используется с кнопками
  // TODO: не повторять один и тот же код

  void attack(String text, int number, double kg  ) {
    //TODO: логика
    print(text);
    print('атака $number, kg -$kg');
  }

  void dastan(String salary){
    print(salary);
  }

  void fire() {
    print('fire');
  }

  void gun() {
    print('gun');
  }

  void sword() {
    print('sword');
  }

  String text(){
    return 'Baias';
  }
  String nameOne(String text){
    return text;
  }

  int plus(){
    return 2+2;
  }
  int minus(int a, int b, int c){
    return a - b * c;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  attack('atack', 1, 68.90);
                },
                child: const Text('attack'),
              ),
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  attack('fire', 2, 87.98);
                },
                child: const Text('mage'),
              ),
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                 attack('GUN', 5, 87.67);
                },
                child: const Text('ADK'),
              ),
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  attack('sword', 4, 67.98);
                },
                child: const Text('Knight'),
              ),
            ),
            Text(text()),
            Text(nameOne('Baias')),
            Text(nameOne('Dastan')),
            Text('${plus()}', ),
            Text('${minus(10, 5, 2)}')
          ],
        ),
      ),
    );
  }
}