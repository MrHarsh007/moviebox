class QuizModel {
  final String? title;
  final String? description;
  final String? type;
  final int? createdAt;
  final List<QuestionModel>? questions;

  QuizModel({
    this.title,
    this.description,
    this.type,
    this.createdAt,
    this.questions,
  });

  factory QuizModel.fromFirestore(
    Map<String, dynamic>? data,
    List<QuestionModel>? questions,
  ) {
    if (data == null) return QuizModel();

    return QuizModel(
      title: data['title'] as String?,
      description: data['description'] as String?,
      type: data['type'] as String?,
      createdAt: data['createdAt'] as int?,
      questions: questions,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'type': type,
      'createdAt': createdAt,
      'quiz': questions?.asMap().map((index, question) {
        return MapEntry((index + 1).toString(), question.toJson());
      }),
    };
  }
}

class QuestionModel {
  final String? question;
  final List<String>? options;
  final String? correctAnswer;

  QuestionModel({this.question, this.options, this.correctAnswer});

  factory QuestionModel.fromFirestore(Map<String, dynamic>? data) {
    if (data == null) return QuestionModel();

    return QuestionModel(
      question: data['question'] as String?,
      options: (data['options'] is List)
          ? List<String>.from(data['options'])
          : null,
      correctAnswer: data['true'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'question': question, 'options': options, 'true': correctAnswer};
  }
}
