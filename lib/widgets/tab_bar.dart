import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning_phase1/widgets/education_page.dart';
import 'package:learning_phase1/widgets/expertise_page.dart';
import 'package:learning_phase1/widgets/home_page.dart';
import 'package:learning_phase1/widgets/project_page.dart';
import 'package:url_launcher/url_launcher.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  final Color color = const Color.fromARGB(160, 255, 255, 255);
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
            title: const Text(
              'Portfolio',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Color.fromARGB(255, 135, 107, 165),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            elevation: 20,
            shadowColor: Colors.grey,
            // leading: Icon(Icons.menu,color: color,),
            actions: [
              IconButton(
                onPressed: () {
                  const link = "https://www.linkedin.com/in/faysal-hasan-dev/";
                  launchUrl(
                    Uri.parse(link),
                    mode: LaunchMode.platformDefault
                  );
                },
                icon: Icon(
                  FontAwesomeIcons.linkedin,
                  color: color,
                ),
              ),
              IconButton(
                onPressed: () {
                  const link = "https://github.com/Faysal-Ibnea-Hasan";
                  launchUrl(
                    Uri.parse(link),
                    mode: LaunchMode.platformDefault
                  );
                },
                icon: Icon(
                  FontAwesomeIcons.github,
                  color: color,
                ),
              ),
              IconButton(
                onPressed: () {
                  const link = "https://www.instagram.com/faysal_ibnea_hasan/";
                  launchUrl(
                    Uri.parse(link),
                    mode: LaunchMode.platformDefault
                  );
                  
                },
                icon: Icon(
                  FontAwesomeIcons.instagram,
                  color: color,
                ),
              ),
            ],
            bottom: TabBar(
              indicatorColor: color,
              padding: const EdgeInsets.only(left: 5),
              tabAlignment: TabAlignment.start,
              //indicatorColor: Colors.black,
              tabs: [
                Tab(
                  height: 100,
                  icon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      color: color,
                    ),
                  ),
                  child: const Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  height: 100,
                  icon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.book,
                      color: color,
                    ),
                  ),
                  child: const Text(
                    'Expertise',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  height: 100,
                  icon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.cast_for_education,
                      color: color,
                    ),
                  ),
                  child: const Text(
                    'Education',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  height: 100,
                  icon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.work,
                      color: color,
                    ),
                  ),
                  child: const Text(
                    'Projects',
                    style: TextStyle(color: Colors.white),
                  ),
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
              ProjectPage(),
            ],
          ),
        ),
      ),
    );
  }
}


