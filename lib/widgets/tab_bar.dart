import 'package:flutter/material.dart';
import 'package:learning_phase1/widgets/education_page.dart';
import 'package:learning_phase1/widgets/expertise_page.dart';
import 'package:learning_phase1/widgets/home_page.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => const TabBarExample(),
      },
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
              padding: const EdgeInsets.only(left: 5),
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
                      Icons.cast_for_education,
                    ),
                  ),
                  text: 'Education',
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
              HomePage(),
              ExpertisePage(),
              EducationPage(),
              ForthPage(),
            ],
          ),
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
