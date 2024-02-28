import 'package:flutter/material.dart';
import 'package:untitled1/views/quiz_screen.dart';


class SubjectListScreen extends StatelessWidget {
  const SubjectListScreen({super.key});

  final List subjectListData=const[
    {'subject_name': 'Urdu','subject_id': 1001},
    {'subject_name': 'English','subject_id': 1002},
    {'subject_name': 'Arabic','subject_id': 1003},
    {'subject_name': 'Persian','subject_id': 1004},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar:
         AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: const Text('Subject List ',
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10,
            ),

            ...subjectListData.map(
                  (e) =>Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      onTap: () {
                        print(e['subject_id']);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuizScreen(),
                          ),
                        );
                      },

                      title: Text(e['subject_name'],),
                                  tileColor: Colors.teal,
                                  textColor: Colors.white,
                                  iconColor: Colors.white,
                                  trailing: const Icon(Icons.arrow_forward),

                                ),
                  ) ,).toList()


          ],
        ),
      ),
      );

  }
}
