import 'package:flutter/widgets.dart';

class ThirdWidgetBody extends StatelessWidget {
  const ThirdWidgetBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'ID',
                  textAlign: TextAlign.left,
                ),
              ), // Container of ID
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Name',
                  textAlign: TextAlign.left,
                ),
              ), // Container of Name
              const Expanded(
                child: Text(
                  'Phone Number',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Gender',
                  textAlign: TextAlign.left,
                ),
              ), // Container of Gender
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Country',
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ), // Center 1
        Center(
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '01',
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Faysal',
                  textAlign: TextAlign.left,
                ),
              ),
              const Expanded(
                child: Text(
                  '01673',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Male',
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Bangladesh',
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
