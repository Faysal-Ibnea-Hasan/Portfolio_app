import 'package:flutter/material.dart';
import 'package:learning_phase1/widgets/third_widget_body.dart';

class SecondWidgetHome extends StatelessWidget {
  const SecondWidgetHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Material App'),
        backgroundColor: Colors.amber,
      ),
      body: const ThirdWidgetBody(),
    );
  }
}
