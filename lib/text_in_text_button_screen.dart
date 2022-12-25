import 'package:flutter/material.dart';

class TextInTextButtonScreen extends StatelessWidget {
  const TextInTextButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo of Text in TextButton'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red,),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white,),
                    ),
                    onPressed: () {
                      print('The red button is pressed.');
                    },
                    child: const Text('Press ⌥⌘+ to show the overflow error.')),
              ],
            ),
            const SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green,),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white,),
                    ),
                    onPressed: () {
                      print('The green button is pressed.');
                    },
                    child: const Text('Wrap TextButton widget with Expanded to fix.'),
                  ),
                )
              ],
            ),
            const SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Flexible(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.purple,),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white,),
                    ),
                    onPressed: (){
                      print('The purple button is pressed.');
                    },
                    child:  const Text(
                      'Or wrap with Flexible widget',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue,),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white,),
                  ),
                  onPressed: (){
                    print('The blue button is pressed.');
                  },
                  child: const Text(
                    'Setting of the scale is also fine for short text.',
                    textScaleFactor: 1.0,
                    style: TextStyle(fontSize: 13.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
