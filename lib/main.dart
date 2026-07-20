import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Application',
      home: const MyHomePage(title: '2nd flutter app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void changeColor() {
    //int counter = 0;
    const Duration(seconds: 1);
    //counter++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 244, 247),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: const Color.fromARGB(255, 110, 181, 214),
          child: Center(
            child: Container(
              width: 60,
              height: 60,
              color: const Color.fromARGB(255, 199, 5, 5),
              child: const Center(),
            ),
          ),
        ),
      ),
    );
  }
}
