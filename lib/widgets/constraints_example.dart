import 'package:flutter/material.dart';

class ConstraintExample extends StatelessWidget {
  const ConstraintExample({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Constraints Example',
      debugShowCheckedModeBanner: false,
      home: ConsEx(),
    );
  }
}

class ConsEx extends StatelessWidget {
  const ConsEx({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.greenAccent,
          constraints: const BoxConstraints(
            minHeight: 70,
            maxHeight: 200,
            minWidth: 70,
            maxWidth: 200,
          ),
          child: Container(
            color: Colors.red,
            padding: const EdgeInsets.all(20),
            constraints: const BoxConstraints.expand(
              height: 100,
              width: 200,
            ),
            child: const Text(
              'Flutter',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
