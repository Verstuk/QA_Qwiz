import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xff252c4a);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text(
          'QA Quiz',
          style: TextStyle(fontSize: 30.0),
        ),
        leading: const Icon(
          Icons.memory,
          size: 50.0,
        ),
      ),
      backgroundColor: mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Поздравляем!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: Text(
              "Ваш счет: ${widget.score.toString()}",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
