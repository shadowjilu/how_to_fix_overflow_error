import 'package:flutter/material.dart';

class TextInTabScreen extends StatelessWidget {
  const TextInTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInTabScreenWidget();
  }
}

class TextInTabScreenWidget extends StatefulWidget {
  const TextInTabScreenWidget({Key? key}) : super(key: key);

  @override
  createState() => _TextInTabScreenWidgetState();
}

class _TextInTabScreenWidgetState extends State<TextInTabScreenWidget>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  final List<Tab> tabs = <Tab>[
    const Tab(
      text: 'One line text',
    ),
    Tab(
      child: Wrap(
        children: const [
          Text('Wrap the Text with Wrap widget to show full text')
        ],
      ),
    ),
    Tab(
      child: Wrap(
        children: const [
          Text('And set the fixed scale', textScaleFactor: 1.0, style: TextStyle(fontSize: 13.0),)
        ],
      ),
    ),
  ];

  void initState() {
    super.initState();
    _controller = TabController(length: tabs.length, vsync: this);

    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      if (mounted) {
        _controller?.animateTo(0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo of Text in Tab'),
      ),
      body: TabBar(
        controller: _controller,
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.blue,
        tabs: tabs,
      ),
    );
  }
}
