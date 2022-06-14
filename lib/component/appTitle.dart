import 'package:flutter/material.dart';
class AppTitle extends StatelessWidget {

  const AppTitle({Key? key, required this.title, required this.fontSize}) : super(key: key);

  final String title ;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(title ,style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
    ),
    );
  }
}
