//import 'package:adv_basics/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 80),
            Text(
              'Learn Flutter the fun way!',
              style: GoogleFonts.titilliumWeb(
                color: const Color.fromARGB(255, 223, 152, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),          
          // Text(
          //   'Learn Flutter the fun way!',
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 24,
          //   ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
