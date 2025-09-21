import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:moviesbox/src/common_componenet/common_button.dart';
import 'package:moviesbox/src/common_componenet/common_dialog.dart';
import 'package:moviesbox/src/common_componenet/common_snackbar.dart';
import 'package:moviesbox/src/domain/entity/quiz_model.dart';
import 'package:moviesbox/src/utilities/sized_box_extension.dart';

class JsonUploadPage extends StatefulWidget {
  const JsonUploadPage({super.key});

  @override
  State<JsonUploadPage> createState() => _JsonUploadPageState();
}

class _JsonUploadPageState extends State<JsonUploadPage> {
  final TextEditingController _controller = TextEditingController();

  final String initialJson =
      '''{
  "title": "Test Quiz",
  "description": "Test Description",
  "createdAt": ${DateTime.now().millisecondsSinceEpoch ~/ 1000},
  "type": "entertainment",
  "quiz": {
    "1": {
      "question": "Test 1 Question",
      "options": ["Ans 1", "Ans 2", "Ans 3", "Ans 4"],
      "true": "Ans 1"
    },
    "2": {
      "question": "Test 2 Question",
      "options": ["Ans 1", "Ans 2", "Ans 3", "Ans 4"],
      "true": "Ans 2"
    }
  }
}''';

  @override
  void initState() {
    super.initState();
    _controller.text = initialJson;
  }

  List<String> allowedCategories = [
    'entertainment',
    'history',
    'science',
    'technology',
    'general',
  ];

  QuizModel? parseAndValidateQuiz(String rawJson) {
    final Map<String, dynamic> data = json.decode(rawJson);

    // Validate required keys
    if (!data.containsKey('title') ||
        !data.containsKey('quiz') ||
        !data.containsKey('type')) {
      throw Exception('Missing required fields: title, quiz, or type');
    }

    final type = data['type'];
    if (type is! String || !allowedCategories.contains(type)) {
      throw Exception(
        'Invalid quiz category: "$type"\n'
        'Allowed categories: ${allowedCategories.join(', ')}',
      );
    }

    final Map<String, dynamic> quizData = data['quiz'];

    final List<QuestionModel> questions = quizData.entries.map((entry) {
      final value = entry.value;
      final questionModel = QuestionModel.fromFirestore(value);

      if (questionModel.options == null || questionModel.options!.length != 4) {
        throw Exception(
          'Question "${questionModel.question ?? '[no question text]'}" must have exactly 4 options.',
        );
      }

      return questionModel;
    }).toList();

    if (questions.isEmpty) {
      throw Exception('Quiz must have at least one question');
    }

    return QuizModel.fromFirestore(data, questions);
  }

  void _validateJson(BuildContext context) {
    try {
      final QuizModel quizModel = parseAndValidateQuiz(_controller.text)!;

      showCustomSnackBar(
        context,
        message: 'JSON parsed successfully',
        type: SnackBarType.success,
      );

      showDialog(
        context: context,
        builder: (context1) => CommonDialog(
          title: "Confirm Upload?",
          description: "Are you sure you want to upload this quiz?",
          onConfirm: () async {
            await uploadQuizzesToFirestore([quizModel.toJson()]);
          },
          confirmButtonText: "Upload",
          cancelButtonText: "Cancel",
        ),
      );
    } catch (e) {
      showCustomSnackBar(
        context,
        message: ' Invalid JSON: ${e.toString()}',
        type: SnackBarType.error,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upload Quiz JSON')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Flexible(
              child: TextField(
                controller: _controller,
                undoController: UndoHistoryController(),
                keyboardType: TextInputType.multiline,
                maxLines: null,
                expands: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Edit your quiz JSON here...',
                ),
                style: const TextStyle(fontFamily: 'monospace'),
              ),
            ),
            30.hx,
            CustomElevatedButton(
              width: 200,
              height: 50,
              onTap: () => _validateJson(context),
              label: 'Add to Database',
            ),
          ],
        ),
      ),
    );
  }

  Future<void> uploadQuizzesToFirestore(
    List<Map<String, dynamic>> quizzes,
  ) async {
    debugPrint('Uploading quizzes to Firestore...');
    final FirebaseFirestore firestore = FirebaseFirestore.instance;

    try {
      for (int i = 0; i < quizzes.length; i++) {
        final quiz = quizzes[i];

        // Separate the questions from the rest of the quiz data
        final questions = quiz['quiz'] as Map<String, dynamic>;
        final quizData = Map<String, dynamic>.from(quiz)..remove('quiz');

        // Create a new document in 'quiz' collection
        final quizDocRef = firestore.collection('quiz').doc();

        // Set the top-level quiz data
        await quizDocRef.set(quizData);

        // Create subcollection 'questions'
        final questionsCollectionRef = quizDocRef.collection('questions');

        // Loop through each question and add to subcollection
        for (final entry in questions.entries) {
          final questionId = 'q${entry.key}';
          final questionData = entry.value as Map<String, dynamic>;

          await questionsCollectionRef.doc(questionId).set(questionData);
        }

        debugPrint('Uploaded quiz${i + 1}');
      }
    } catch (e, stackTrace) {
      debugPrint('Failed to upload quizzes: $e');
      debugPrint('Stack trace: $stackTrace');
    }
  }
}
