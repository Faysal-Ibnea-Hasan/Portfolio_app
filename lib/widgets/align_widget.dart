import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Align Items',
      debugShowCheckedModeBanner: false,
      home: AlignHome(),
    );
  }
}

class AlignHome extends StatelessWidget {
  const AlignHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              height: 120,
              width: 120,
              color: Colors.blue,
              child: const Align(
                alignment: Alignment.topLeft,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 120,
              width: 120,
              color: Colors.blue,
              child: const Align(
                alignment: Alignment.topRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 120,
              width: 120,
              color: Colors.blue,
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 120,
              width: 120,
              color: Colors.blue,
              child: const Align(
                alignment: Alignment.bottomRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add_a_photo,
        ),
      ),
    );
  }
}
