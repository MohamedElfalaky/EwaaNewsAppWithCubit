import 'package:flutter/cupertino.dart';

class WidgetCategory extends StatelessWidget {
  const WidgetCategory(
      {super.key,
      required this.text,
      required this.textColor,
      required this.color,
      required this.height,
      required this.width});
  final String text;
  final Color color;
  final double height;
  final double width;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(color: const Color(0xffF0F1FA)),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontFamily: 'NunitoSans',
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
