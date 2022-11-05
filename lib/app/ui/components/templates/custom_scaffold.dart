import 'package:app_find_house/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    Key? key,
    this.body,
  }) : super(key: key);

  final Widget? body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cyan,
      body: body,
    );
  }
}
