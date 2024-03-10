import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Secondary School Certificate (SSC)',
      'Higher Secondery Certificate (HSC)',
      'Bsc in Computer Science & Engineering',
    ];
    final List<String> date = [
      '2016',
      '2018',
      '2024',
    ];
    final List<String> grade = [
      'Grade: 5.00/5.00',
      'Grade: 4.83/5.00',
      'Grade: 3.30/4.00',
    ];
    return Timeline.tileBuilder(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      theme: TimelineThemeData(
        nodePosition: 0,
      ),
      builder: TimelineTileBuilder.fromStyle(
        itemExtent: MediaQuery.of(context).size.width,
        itemCount: items.length,
        contentsAlign: ContentsAlign.basic,
        contentsBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(
            top: 50,
            bottom: 50,
            left: 25,
            right: 20,
          ),
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.grade,
                ),
                Text(
                  items[index],
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  date[index],
                ),
                Text(
                  grade[index],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
