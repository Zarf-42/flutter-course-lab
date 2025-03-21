import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers; 

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    
    for (var i = 0; i < chosenAnswers.length; i++) {
      // loop body
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct-answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    } 

    return summary;
  }



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X out of Y questions correctly!'),
            SizedBox(height: 30,),
            Text('List of answers & questions...'),
            SizedBox(height: 30,),
            TextButton(
              onPressed: () {},
             child: Text('Restart Quiz!'),
             ),
          ],
        ),
      ),
    );
  }
}