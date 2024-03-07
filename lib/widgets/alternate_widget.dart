import 'package:flutter/material.dart';

class AlternateWidget extends StatelessWidget {
  const AlternateWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Lets Try',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children:  [
        ColumnOne(),
        ColumnTwo(),
        ColumnThree(),
      ],
    );
  }
}

class ModelContainer extends StatelessWidget {
  const ModelContainer({super.key, required this.modelText});
  final Text modelText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: modelText,
    );
  }
}

class ColumnOne extends StatelessWidget {
  const ColumnOne({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        children: [
          ModelContainer(
            modelText: Text('ID'),
          ),
          ModelContainer(
            modelText: Text('Name'),
          ),
          ModelContainer(
            modelText: Text('Phone'),
          ),
          ModelContainer(
            modelText: Text('Gender'),
          ),
          ModelContainer(
            modelText: Text('Country'),
          )
        ],
      ),
    );
  }
}

class ColumnTwo extends StatelessWidget{
  const ColumnTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        children: [
          ModelContainer(
            modelText: Text('01'),
          ),
          ModelContainer(
            modelText: Text('Faysal'),
          ),
          ModelContainer(
            modelText: Text('01673724510'),
          ),
          ModelContainer(
            modelText: Text('Male'),
          ),
          ModelContainer(
            modelText: Text('Bangladesh'),
          )
        ],
      ),
    );
  }
}

class ColumnThree extends StatelessWidget{
  const ColumnThree({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        children: [
          ModelContainer(
            modelText: Text('02'),
          ),
          ModelContainer(
            modelText: Text('Hasan'),
          ),
          ModelContainer(
            modelText: Text('01673724510'),
          ),
          ModelContainer(
            modelText: Text('Male'),
          ),
          ModelContainer(
            modelText: Text('Pakistan'),
          )
        ],
      ),
    );
  }
}
