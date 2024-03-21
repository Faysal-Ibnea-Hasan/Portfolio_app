import 'package:flutter/material.dart';

class ExpertisePage extends StatelessWidget {
  const ExpertisePage({super.key});
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
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        const SizedBox(
                          width: 100,
                          height: 20,
                          child: Text(
                            'Flutter',
                            textAlign: TextAlign.center,
                          ),
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
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        const SizedBox(
                          width: 100,
                          height: 20,
                          child: Text(
                            'Laravel',
                            textAlign: TextAlign.center,
                          ),
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
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        const SizedBox(
                          width: 100,
                          height: 20,
                          child: Text(
                            'Post-man',
                            textAlign: TextAlign.center,
                          ),
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
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        const SizedBox(
                          width: 100,
                          height: 20,
                          child: Text(
                            'MySQL',
                            textAlign: TextAlign.center,
                          ),
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
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        const SizedBox(
                          width: 100,
                          height: 20,
                          child: Text(
                            'API',
                            textAlign: TextAlign.center,
                          ),
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
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        const SizedBox(
                          width: 100,
                          height: 20,
                          child: Text(
                            'Github',
                            textAlign: TextAlign.center,
                          ),
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
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        const SizedBox(
                          width: 100,
                          height: 20,
                          child: Text(
                            'Adobe XD',
                            textAlign: TextAlign.center,
                          ),
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
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        const SizedBox(
                          width: 100,
                          height: 20,
                          child: Text(
                            'Figma',
                            textAlign: TextAlign.center,
                          ),
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
