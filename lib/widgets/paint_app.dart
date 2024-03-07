import 'package:flutter/material.dart';
import 'package:learning_phase1/widgets/paint_widget.dart';

class PaintApp extends StatelessWidget {
  const PaintApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Paint App',
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A custome home page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          leading: const Icon(Icons.menu),
          title: const Text(
            'A custom Home Page',
            textAlign: TextAlign.center,
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(5),
              child: CustomPaint(
                painter: ShapingPainter(),
                child: Container(
                  height: size.height / 1,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 40,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: const <Widget>[
                    Text(
                      'What is this',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
