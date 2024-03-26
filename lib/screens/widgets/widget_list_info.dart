import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetListInfo extends StatelessWidget {
  const WidgetListInfo(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.height,
      required this.width});
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(children: [
        Opacity(
          opacity: 0.8,
          child: Image.asset(
            image,
            width: 360,
            height: 128,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10,
          left: 13,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: const TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: height,

                //40
              ),
              Row(
                children: [
                  Text(text2,
                      style: const TextStyle(
                          fontFamily: 'NunitoSans',
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w600,
                          fontSize: 13)),
                  SizedBox(
                    width: width,
                    //120
                  ),
                  Text(text3,
                      style: const TextStyle(
                          fontFamily: 'NunitoSans',
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w600,
                          fontSize: 13))
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
