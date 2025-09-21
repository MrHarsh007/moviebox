import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:moviesbox/export.dart';

Future<void> showCommonAdaptiveDialog({
  required BuildContext context,
  required String title,
  required String content,
  String confirmText = 'OK',
  String cancelText = 'Cancel',
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
}) {
  if (Platform.isIOS) {
    // iOS style dialog
    return showCupertinoDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
        title: Text(title, style: context.textTheme.titleLarge),
        content: Text(content, style: context.textTheme.bodyMedium),
        actions: [
          CupertinoDialogAction(
            child: Text(cancelText),
            onPressed: () {
              Navigator.of(context).pop();
              onCancel?.call();
            },
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            child: Text(confirmText),
            onPressed: () {
              Navigator.of(context).pop();
              onConfirm?.call();
            },
          ),
        ],
      ),
    );
  } else {
    // Android style dialog
    return showDialog(
      context: context,
      builder: (_) => CommonDialog(
        title: title,
        description: content,
        onConfirm: onConfirm,
        cancelButtonText: cancelText,
        confirmButtonText: confirmText,
      ),
    );
  }
}

class CommonDialog extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onConfirm;
  final VoidCallback? onCancel;
  final String confirmButtonText;
  final String cancelButtonText;

  const CommonDialog({
    super.key,

    required this.title,
    required this.description,
    this.onConfirm,
    this.onCancel,
    this.confirmButtonText = "Confirm",
    this.cancelButtonText = "Cancel",
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey.shade800, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 10,
      title: Text(title, style: context.textTheme.headlineSmall),
      content: Text(description, style: context.textTheme.titleMedium),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent,
          ),
          onPressed: onCancel ?? () => Navigator.of(context).pop(),
          child: Text(
            cancelButtonText,
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 0.5,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.red.shade500,
          ),
          onPressed: () {
            Navigator.of(context).pop();
            if (onConfirm != null) {
              onConfirm!();
            }
          },
          child: Text(
            confirmButtonText,
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 0.5,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
