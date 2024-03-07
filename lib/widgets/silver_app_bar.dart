import 'package:flutter/material.dart';

class SilverAppBarExample extends StatelessWidget {
  const SilverAppBarExample({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SilverApp',
      debugShowCheckedModeBanner: false,
      home: SilverAppHome(),
    );
  }
}

class SilverAppHome extends StatelessWidget {
  const SilverAppHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Colors.black,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              titlePadding: const EdgeInsets.only(right: 5, left: 5),
              title: const Text(
                'Welcome Faysal Hasan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              background: Image.network(
                'https://cdn.pixabay.com/photo/2016/09/10/17/18/book-1659717_960_720.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildListDelegate([
              Container(
                color: Colors.red,
                margin: const EdgeInsets.all(5),
              ),
              Container(
                color: Colors.green,
                margin: const EdgeInsets.all(10),
              ),
              Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(15),
              ),
              Container(
                color: Colors.red,
                margin: const EdgeInsets.all(20),
              ),
              Container(
                color: Colors.green,
                margin: const EdgeInsets.all(25),
              ),
              Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(30),
              ),
              Container(
                color: Colors.red,
                margin: const EdgeInsets.all(35),
              ),
              Container(
                color: Colors.green,
                margin: const EdgeInsets.all(40),
              ),
              Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(45),
              ),
              Container(
                color: Colors.red,
                margin: const EdgeInsets.all(45),
              ),
              Container(
                color: Colors.green,
                margin: const EdgeInsets.all(40),
              ),
              Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(35),
              ),
              Container(
                color: Colors.red,
                margin: const EdgeInsets.all(30),
              ),
              Container(
                color: Colors.green,
                margin: const EdgeInsets.all(25),
              ),
              Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(20),
              ),
              Container(
                color: Colors.red,
                margin: const EdgeInsets.all(15),
              ),
              Container(
                color: Colors.green,
                margin: const EdgeInsets.all(10),
              ),
              Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(5),
              ),
              
            ]),
            itemExtent: 100,
          )
        ],
      ),
    );
  }
}
