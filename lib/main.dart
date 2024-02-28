import 'package:flutter/material.dart';
import 'package:untitled1/views/subject_list.dart';
// import 'package:untitled1/views/result_screen.dart';
// import 'package:percent_indicator/percent_indicator.dart';

void main (){
  runApp(const MyApp(

  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const SubjectListScreen(

      ),
    );
  }
}
