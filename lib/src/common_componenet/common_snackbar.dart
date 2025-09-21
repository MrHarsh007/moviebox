import 'package:flutter/material.dart';

enum SnackBarType { success, error, warning }

void showCustomSnackBar(
  BuildContext context, {
  required String message,
  required SnackBarType type,
}) {
  final Color backgroundColor;
  final IconData icon;

  switch (type) {
    case SnackBarType.success:
      backgroundColor = Colors.green;
      icon = Icons.check_circle;
      break;
    case SnackBarType.error:
      backgroundColor = Colors.red;
      icon = Icons.error;
      break;
    case SnackBarType.warning:
      backgroundColor = Colors.orange;
      icon = Icons.warning;
      break;
  }

  // Hide any currently open SnackBar before showing a new one
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  final snackBar = SnackBar(
    backgroundColor: backgroundColor,
    content: Row(
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(width: 12),
        Expanded(child: Text(message, maxLines: 3)),
      ],
    ),
    duration: const Duration(seconds: 3),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
