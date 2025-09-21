import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moviesbox/export.dart';

class CommonLoader extends StatelessWidget {
  const CommonLoader({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return const CupertinoActivityIndicator();
    }
    return LoadingAnimationWidget.beat(color: Colors.red, size: 30);
  }
}
