import 'package:flutter/material.dart';

class WidgetBottomNavigationBar extends StatelessWidget {
  const WidgetBottomNavigationBar({
    super.key,
    required this.image,
    required this.text,
    required this.textColor,
  });
  final String image;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
            fontFamily: 'NunitoSans',
          ),
        )
      ],
    );
  }
}
