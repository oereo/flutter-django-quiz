import 'package:first/model/model_quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class QuizScreen extends StatefulWidget {
  List<Quiz> quizs;
  QuizScreen({required this.quizs});
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<int> _answers = [-1, -1, -1];
  List<bool> _answerState = [false, false, false];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.deepPurple),
            ),
            width: width * 0.85,
            height: height * 0.5,
            child: Swiper(
              physics: NeverScrollableScrollPhysics(),
              loop: false,
              itemCount: widget.quizs.length,
              itemBuilder:
                  (BuildContext context, int index) {
                return _buildQuizCard(
                    widget.quizs[index], width, height);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuizCard(
      Quiz quiz, double width, double height) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white),
      ),
    );
  }
}
