import 'package:flutter/material.dart';

class WidgetDetail extends StatelessWidget {
  const WidgetDetail(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4});
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(image)),
            const SizedBox(
              height: 10,
            ),
            Text(
              text1,
              style: const TextStyle(
                  fontFamily: 'NunitoSans',
                  color: Color(0xff2E0505),
                  fontWeight: FontWeight.w300,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              text2,
              style: const TextStyle(
                  color: Color(0xff121212),
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
            const SizedBox(
              height: 6,
            ),
            RichText(
              text: TextSpan(
                text: text3,
                style: const TextStyle(
                  color: Color(0xff121212),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'NunitoSans',
                ),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'Read More', style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              text4,
              style: const TextStyle(
                color: Color(0xff2E0505),
                fontWeight: FontWeight.w700,
                fontSize: 12,
                fontFamily: 'NunitoSans',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
