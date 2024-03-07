import 'package:flutter/material.dart';

class BaselineWidget extends StatelessWidget {
  const BaselineWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Baseline',
      debugShowCheckedModeBanner: false,
      home: BaselineHome(),
    );
  }
}

class BaselineHome extends StatelessWidget {
  const BaselineHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Baseline'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Baseline(
                baseline: 100,
                baselineType: TextBaseline.alphabetic,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
