import 'package:moviesbox/export.dart';

class QueWidget extends StatefulWidget {
  final int queNumber;
  final String question;
  final List<String> options; // Updated from Map to List
  final String correctAnswer; // Updated from List to single String

  final bool isMultipleAnswer;
  final bool isAnswered;
  final bool isLoading;

  final String? selectedAnswer; // Single selected answer
  final Function(String)? onAnswerSelect;

  const QueWidget({
    super.key,
    required this.queNumber,
    required this.question,
    required this.options,
    required this.correctAnswer,

    this.isMultipleAnswer = false,
    this.isAnswered = false,
    this.isLoading = false,
    this.selectedAnswer,
    this.onAnswerSelect,
  });

  @override
  State<QueWidget> createState() => _QueWidgetState();
}

class _QueWidgetState extends State<QueWidget> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      elevation: 5,
      color: Colors.transparent,
      // shadowColor: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(RADIUS),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(RADIUS),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Question ${widget.queNumber}",
                  style: textTheme.headlineSmall?.copyWith(fontSize: 20),
                ),
                Text(
                  "Choose one",
                  style: textTheme.titleSmall?.copyWith(
                    fontSize: 16,
                    color: AppColor.primaryColor,
                  ),
                ),
              ],
            ),
            10.hx,

            /// Question Text
            Text(
              widget.question,
              style: textTheme.headlineSmall?.copyWith(
                fontSize: 22,
                // fontWeight: FontWeight.w500,
              ),
            ),
            15.hx,

            /// Options List
            ...List.generate(widget.options.length, (index) {
              final optionText = widget.options[index];
              final optionLabel = String.fromCharCode(
                65 + index,
              ); // A, B, C, ...
              final bool isSelected = widget.selectedAnswer == optionText;
              final bool isCorrect = widget.correctAnswer == optionText;

              Color borderColor;
              if (!widget.isAnswered) {
                borderColor = isSelected ? Colors.blue : Colors.grey;
              } else {
                if (isCorrect) {
                  borderColor = Colors.green;
                } else if (isSelected && !isCorrect) {
                  borderColor = Colors.red;
                } else {
                  borderColor = Colors.grey;
                }
              }

              return Container(
                margin: const EdgeInsets.only(bottom: 15),

                child: InkWell(
                  onTap: widget.isAnswered
                      ? null
                      : () => widget.onAnswerSelect?.call(optionText),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(RADIUS),
                      border: Border.all(
                        color: borderColor,
                        width: (isSelected || (widget.isAnswered && isCorrect))
                            ? 2
                            : 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Text(
                            optionLabel, // A, B, C, ...
                            style: textTheme.titleLarge?.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        10.wx,
                        Expanded(
                          child: Text(optionText, style: textTheme.titleLarge),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
