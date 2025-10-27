import 'package:flutter/material.dart';

class QuizHistoryTile extends StatefulWidget {
  final String category;
  final String question;
  final String userAnswer;
  final String answer;

  const QuizHistoryTile({
    required this.category,
    required this.question,
    required this.userAnswer,
    required this.answer,
    Key? key,
  }) : super(key: key);

  @override
  State<QuizHistoryTile> createState() => _QuizHistoryTileState();
}

class _QuizHistoryTileState extends State<QuizHistoryTile> {
  bool _showDetails = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(widget.question),
            subtitle: Text('카테고리: ${widget.category}'),
            trailing: IconButton(
              icon: Icon(_showDetails ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  _showDetails = !_showDetails;
                });
              },
            ),
          ),
          if (_showDetails)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('내 답변: ${widget.userAnswer}',style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('정답: ${widget.answer}',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
