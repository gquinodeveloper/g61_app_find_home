import 'package:app_find_house/app/ui/components/logos/custom_logo.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: CustomLogo(),
    );
  }
}
