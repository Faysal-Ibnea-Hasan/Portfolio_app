import 'package:flutter/material.dart';
import 'package:learning_phase1/widgets/onboard_page.dart';

//import 'package:learning_phase1/widgets/appbar_practice.dart';
//import 'package:learning_phase1/widgets/silver_app_bar.dart';
// import 'package:learning_phase1/widgets/tab_bar.dart';
//import 'package:learning_phase1/widgets/align_widget.dart';
//import 'package:learning_phase1/widgets/aspect_ratio.dart';
//import 'package:learning_phase1/widgets/baseline_widget.dart';
//import 'package:learning_phase1/widgets/paint_app.dart';
//import 'package:learning_phase1/widgets/alternate_widget.dart';
//import 'package:learning_phase1/widgets/constraints_example.dart';
//import 'package:learning_phase1/widgets/first_widget.dart';
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();//for global navigation
void main() {
  runApp(
    MaterialApp(
      navigatorKey: navigatorKey,//global navigation key
      debugShowCheckedModeBanner: false,
      home: const OnBoard(),
    ),
  );
}
