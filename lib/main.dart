import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:async';

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
      home: const ColorBox(title: '2nd flutter app'),
    );
  }
}

class ColorBox extends StatefulWidget {
  const ColorBox({super.key, required this.title});

  final String title;

  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  Color _currentColor = Colors.purple;
  Timer? _timer;
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      _changeColor();
    });
  }

  void _changeColor() {
    setState(() {
      _currentColor = Color.fromARGB(
        255,
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  void _handleTap() {
    _changeColor();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 175, 218, 236),
      ),

      child: GestureDetector(
        onTap: _handleTap,
        child: AnimatedContainer(
          width: 60,
          height: 60,
          duration: const Duration(milliseconds: 300),
          color: _currentColor,
        ),
      ),
    );
  }
}
