import "package:flutter/material.dart";
import "package:learning_phase1/widgets/project_card.dart";
import "package:url_launcher/url_launcher.dart";

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});
  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  List<ProjectCard> laravel = [
    const ProjectCard(
      urlImage: 'lib/assets/images/Bashabari_admin.png',
      title: 'BashaBari (Backend with admin panel)',
      description:
          'This is a web-based application of Property and Rent Management System(PRMS). Using this web-application the management of property is became easy.',
      githubUrl: 'https://github.com/Faysal-Ibnea-Hasan/BashaBari-Admin',
    ),
    const ProjectCard(
      urlImage: 'lib/assets/images/Bashabari.png',
      title: 'BashaBari (Front-end)',
      description:
          'It\'s the frontend of BashaBari using Vue.js, Javascript & Tailwind-Css',
      githubUrl: 'https://github.com/Faysal-Ibnea-Hasan/BashaBari-Frontend',
    ),
    const ProjectCard(
      urlImage: 'lib/assets/images/weather.png',
      title: 'Weather app',
      description:
          'A simple weather web-application using Vue.js using open weather api ',
      githubUrl: 'https://github.com/Faysal-Ibnea-Hasan/Whatsapp',
    ),
  ];
  List<ProjectCard> flutter = [
    const ProjectCard(
      urlImage: 'lib/assets/images/portfolio.jpeg',
      title: 'Personal portfolio',
      description:
          'It\'s a personal portfolio. Developed it using Flutter and Dart. This application is includes one time on-boarding screen, pre-rendered CV, direct call me from app, social media handle and many more!',
      githubUrl: 'https://github.com/Faysal-Ibnea-Hasan/Portfolio_app',
    ),
    const ProjectCard(
      urlImage: 'lib/assets/images/expense_tracker.jpeg',
      title: 'Expense tracker',
      description:
          'A simple expense tracker using Flutter and Dart with state management and crud operation.',
      githubUrl: 'https://github.com/Faysal-Ibnea-Hasan/Expense-Tracker',
    ),
    const ProjectCard(
        urlImage: 'lib/assets/images/whatsapp.jpeg',
        title: 'WhatsApp features clone',
        description: 'Clones of WhatsApp features using Flutter and Dart',
        githubUrl: 'https://github.com/Faysal-Ibnea-Hasan/Whatsapp'),
    const ProjectCard(
      urlImage: 'lib/assets/images/todo.jpeg',
      title: 'Todo app with Firebase',
      description:
          'A simple todo android application using Flutter and Dart associated with Firebase. I\'ve integrated crud operation using Firebase.',
      githubUrl: 'https://github.com/Faysal-Ibnea-Hasan/Flutter-with-FireBase',
    ),
    const ProjectCard(
        urlImage: 'lib/assets/images/recipe.jpeg',
        title: 'Reciepe app',
        description:
            'An application with Rest api integration of reciepe. Flutter and Dart is used for developing this application.',
        githubUrl: ''),
  ];
  List<ProjectCard> react = [
    const ProjectCard(
      urlImage: 'lib/assets/images/khobor.png',
      title: 'News-portal',
      description:
          'A web based news portal application built with React.js and Bootstrap.',
      githubUrl: 'https://github.com/Faysal-Ibnea-Hasan/KhoboR',
    ),
    const ProjectCard(
      urlImage: 'lib/assets/images/textutilis.png',
      title: 'TextUtil',
      description:
          'A text edditing application built with React.js and Bootstrap',
      githubUrl: 'https://github.com/Faysal-Ibnea-Hasan/TextUtilis',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple[50],
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          height: 75,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontStyle: FontStyle.italic),
                children: <TextSpan>[
                  TextSpan(text: 'Made with '),
                  TextSpan(
                    text: 'Dart & Flutter',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // 'Made with Dart & Flutter',
              // textAlign: TextAlign.center,
              // style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: flutter.map((project) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: buildUIFlutter(flutter: project),
              );
            }).toList(),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple[50],
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          height: 75,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontStyle: FontStyle.italic),
                children: <TextSpan>[
                  TextSpan(text: 'Made with '),
                  TextSpan(
                    text: 'Laravel & Vue.Js',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // 'Made with Dart & Flutter',
              // textAlign: TextAlign.center,
              // style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: laravel.map((project) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: buildUILaravel(laravel: project),
              );
            }).toList(),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple[50],
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          height: 75,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontStyle: FontStyle.italic),
                children: <TextSpan>[
                  TextSpan(text: 'Made with '),
                  TextSpan(
                    text: 'React.Js',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // 'Made with Dart & Flutter',
              // textAlign: TextAlign.center,
              // style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: react.map((project) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: buildUIReact(react: project),
              );
            }).toList(),
          ),
        ),
      ],
    );
    //   return SizedBox(
    //     height: 200,
    //     width: 200,
    //     child: ListView.separated(
    //       scrollDirection: Axis.horizontal,
    //       shrinkWrap: true,
    //       itemBuilder: (context, index) => buildUI(
    //         projects: projects[index],
    //       ),
    //       separatorBuilder: (context, _) => const SizedBox(
    //         width: 10,
    //       ),
    //       itemCount: projects.length,
    //     ),
    //   );
  }

  Widget buildUILaravel({required ProjectCard laravel}) {
    return SizedBox(
      height: 350,
      width: 300,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Material(
                child: Ink.image(
                  image: AssetImage(laravel.urlImage),
                  height: 100,
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () {
                      final link = laravel.githubUrl;
                      launchUrl(Uri.parse(link),
                          mode: LaunchMode.platformDefault);
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.center,
                laravel.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.center,
                laravel.description,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildUIFlutter({required ProjectCard flutter}) {
    return SizedBox(
      height: 350,
      width: 300,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Material(
                child: Ink.image(
                  image: AssetImage(flutter.urlImage),
                  height: 160,
                  child: InkWell(
                    onTap: () {
                      final link = flutter.githubUrl;
                      launchUrl(Uri.parse(link),
                          mode: LaunchMode.platformDefault);
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.center,
                flutter.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.center,
                flutter.description,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildUIReact({required ProjectCard react}) {
    return SizedBox(
      height: 350,
      width: 300,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Material(
                child: Ink.image(
                  image: AssetImage(react.urlImage),
                  height: 100,
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () {
                      final link = react.githubUrl;
                      launchUrl(Uri.parse(link),
                          mode: LaunchMode.platformDefault);
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.center,
                react.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.center,
                react.description,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
