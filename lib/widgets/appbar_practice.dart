import 'package:flutter/material.dart';

class AppBarPractice extends StatelessWidget {
  const AppBarPractice({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Appbar',
      debugShowCheckedModeBanner: false,
      home: AppbarHome(),
    );
  }
}

class AppbarHome extends StatelessWidget {
  const AppbarHome({super.key});
  static const String _title = 'Flutter App Bar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            tooltip: 'Show SnackBar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'This is profile',
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.account_circle,
              size: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) {
                    return const AppBarSecondHome();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.navigate_next,
            ),
            tooltip: 'Go to the second page',
          )
        ],
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: const Icon(
                Icons.menu,
              ),
            );
          },
        ),
        title: const Text(_title),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}

class AppBarSecondHome extends StatelessWidget {
  const AppBarSecondHome({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Second Page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter AppBar 2'),
          backgroundColor: Colors.brown,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AppBarPractice();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.navigate_before),
            ),
          ],
        ),
      ),
    );
  }
}
