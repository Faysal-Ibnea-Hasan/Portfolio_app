import 'package:flutter/material.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar',
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter'),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.greenAccent,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            elevation: 20,
            shadowColor: Colors.grey,
            leading: const Icon(Icons.menu),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notification_add),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
            bottom: TabBar(
              padding: const EdgeInsets.only(left: 10),
              tabAlignment: TabAlignment.start,
              //indicatorColor: Colors.black,
              tabs: [
                Tab(
                  height: 100,
                  icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home,
                    ),
                  ),
                  text: 'Home',
                ),
                Tab(
                  height: 100,
                  icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.book,
                    ),
                  ),
                  text: 'Expertise',
                ),
                Tab(
                  height: 100,
                  icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.security,
                    ),
                  ),
                  text: 'Security',
                ),
                Tab(
                  height: 100,
                  icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                    ),
                  ),
                  text: 'Settings',
                ),
              ],
              isScrollable: true,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              FirstPage(),
              SecondPage(),
              ThirdPage(),
              ForthPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage("lib/assets/images/Cv_pic.png"),
            radius: 50,
            backgroundColor: Colors.black12,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 100,
            child: const Text(
              "Hi! I am Faysal Ibnea Hasan. I am a flutter developer. I have been satisfying my hunger of creation through software development since 2022.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 150,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/images/flutter.png',
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 150,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/images/laravel.png',
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 150,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/images/postman.png',
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 150,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/images/mysql.png',
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 150,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/images/api.png',
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 150,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/images/github.png',
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 150,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/images/xd.png',
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 150,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/images/figma.png',
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: Text(
          'Security',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class ForthPage extends StatelessWidget {
  const ForthPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: Text(
          'Settings',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
