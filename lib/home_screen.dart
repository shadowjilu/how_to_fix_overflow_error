import 'package:flutter/material.dart';
import 'package:how_to_fix_overflow_error/text_in_row_screen.dart';
import 'package:how_to_fix_overflow_error/text_in_text_button_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo of Fixing Overflow Errors'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TextInRowScreen(),
                    ),
                  );
                },
                child: const Text('Text in Row')),
            TextButton(
                onPressed: () { Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TextInTextButtonScreen(),
                  ),
                );}, child: const Text('Text in TextButton')),
          ],
        ),
      ),
    );
  }
}
