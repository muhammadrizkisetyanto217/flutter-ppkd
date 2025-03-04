import 'package:flutter/material.dart';
import 'package:flutter_ppkd/project/component/main/appbar_quiz.dart';
import 'package:flutter_ppkd/project/component/main/buttons.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  String? _selectedAnswer; // Jawaban yang dipilih user
  final bool _isSubmitted = false; // Status apakah sudah disubmit
  final String _correctAnswer = "B"; // Jawaban benar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarQuiz(titleText: "Quiz"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Soal
          Text(
            "Apa ibu kota Indonesia?",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),

          // Pilihan jawaban
          RadioListTile<String>(
            title: Text("A. Surabaya"),
            value: "A",
            groupValue: _selectedAnswer,
            onChanged: _isSubmitted
                ? null
                : (value) {
                    setState(() {
                      _selectedAnswer = value;
                    });
                  },
          ),
          RadioListTile<String>(
            title: Text("B. Jakarta"),
            value: "B",
            groupValue: _selectedAnswer,
            onChanged: _isSubmitted
                ? null
                : (value) {
                    setState(() {
                      _selectedAnswer = value;
                    });
                  },
          ),
          RadioListTile<String>(
            title: Text("C. Bandung"),
            value: "C",
            groupValue: _selectedAnswer,
            onChanged: _isSubmitted
                ? null
                : (value) {
                    setState(() {
                      _selectedAnswer = value;
                    });
                  },
          ),

          SizedBox(height: 20),

          const Spacer(),
          AppButton(text: "Submit", onPressed: () {}),

          // Menampilkan hasil setelah submit
          if (_isSubmitted)
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                _selectedAnswer == _correctAnswer ? "Benar ✅" : "Salah ❌",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
        ],
      ),
    );
  }
}
