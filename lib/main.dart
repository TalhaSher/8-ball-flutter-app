import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int image = 1;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Center(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue.shade900,
              title: const Center(child: Text("Ask Me Anything")),
            ),
            body: Container(
              color: Colors.blue,
              child: Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      image = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage('images/ball$image.png'),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
