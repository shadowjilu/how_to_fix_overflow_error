import 'package:flutter/material.dart';
import 'package:how_to_fix_overflow_error/text_in_row_screen.dart';
import 'package:how_to_fix_overflow_error/text_in_text_button_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        // '/': (context) => const HomeScreen(),
        '/row': (context) => const TextInRowScreen(),
        '/text_button': (context) => const TextInTextButtonScreen(),
      },
    );
  }
}


