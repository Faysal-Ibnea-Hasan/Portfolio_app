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
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple[50],
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                margin: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15.0, left: 15.0),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("lib/assets/images/Cv_pic.png"),
                        radius: 50,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Text(
                        "Hi! I am a flutter developer. I have been satisfying my hunger of creation through software development since 2022.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
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
              margin: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  'Personal Details',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            GridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              childAspectRatio: 3,
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Name',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Center(
                    child:  Text(
                      'Faysal Ibnea Hasan Jesan',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Education',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Center(
                    child:  Text(
                      'Daffodil International University',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Major',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Center(
                    child:  Text(
                      'Computer Science & Engineering',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Address',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Center(
                    child:  Text(
                      '97/Barabag, Mirpur-2, Dhaka -1216',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
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
              prefs.setBool('onboarding',
                  false); //make the state for onboarding false so that onBoard pages reappear
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
