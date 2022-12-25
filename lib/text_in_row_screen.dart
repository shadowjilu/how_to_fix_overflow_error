import 'package:flutter/material.dart';

class TextInRowScreen extends StatelessWidget {
  const TextInRowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo of Text in Row'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Press ⌥⌘+ to show the overflow error'),
              ],
            ),
            const SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Text('Wrap Text widget with Expanded to fix,'),
                )
              ],
            ),
            const SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Flexible(
                  child: Text(
                    'or wrap with Flexible widget.',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Setting of the scale is also fine for short text.',
                  textScaleFactor: 1.0,
                  style: TextStyle(fontSize: 13.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
