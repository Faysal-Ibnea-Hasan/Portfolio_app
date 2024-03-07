import 'package:flutter/material.dart';

class AspectRatioFlutter extends StatelessWidget {
  const AspectRatioFlutter({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aspect Ratio',
      debugShowCheckedModeBanner: false,
      home: AspectRatioHome(),
    );
  }
}

class AspectRatioHome extends StatelessWidget {
  const AspectRatioHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Aspect Ratio'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              color: Colors.red,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              width: 100,
              height: 100,
              child: AspectRatio(
                aspectRatio: 2.0,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              color: Colors.blue,
              alignment: Alignment.center,
              width: 100,
              height: 100,
              child: AspectRatio(
                aspectRatio: 2.0,
                child: Container(
                  height: 70,
                  width: 80,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              color: Colors.green,
              alignment: Alignment.center,
              width: 100,
              height: 100,
              child: AspectRatio(
                aspectRatio: 0.5,
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.ad_units_rounded,
        ),
      ),
    );
  }
}
