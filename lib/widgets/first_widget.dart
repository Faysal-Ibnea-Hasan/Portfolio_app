import 'package:flutter/material.dart';
import 'package:learning_phase1/widgets/second_widget_home.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'First Material App',
      debugShowCheckedModeBanner: false,
      home: SecondWidgetHome(),
    );
  }
}
