import 'package:flutter/material.dart';
import 'package:learning_phase1/widgets/cv_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // make a call //
  void _makeCall() async {
    final Uri url = Uri(
      scheme: 'tel',
      path: '+8801673724510',
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      print('could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _makeCall,
            tooltip: 'Make a call',
            child: const Icon(Icons.phone),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const PDFViewer(),
                ),
              );
            },
            tooltip: 'CV',
            child: const Icon(Icons.picture_as_pdf),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('onboarding', false);//make the state for onboarding false so that onBoard pages reappear
            },
            tooltip: 'Enable shared preference',
            child: const Icon(
              Icons.first_page,
            ),
          ),
        ],
      ),
    );
  }
}
