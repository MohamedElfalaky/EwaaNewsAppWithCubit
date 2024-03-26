import 'package:ewaa_newz_app/screens/notification/components/widget_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Color(0xff2E0505),
        ),
        title: const Text(
          'Hot Updates',
          style: TextStyle(color: Color(0xffFF3A44)),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            WidgetDetail(
              image: 'assets/Frame 32.png',
              text1: 'Monday, 10 May 2021',
              text2:
                  'WHO classifies triple-mutant Covid variant from India as global health risk',
              text3:
                  'A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...',
              text4: 'Published by Berkeley Lovelace Jr.',
            ),
            WidgetDetail(
              image: 'assets/Frame 32-2.png',
              text1: 'Sunday, 9 May 2021',
              text2: 'What to do if you'
                  're planning or attending a wedding during the pandemic',
              text3:
                  'They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about their wedding... ',
              text4: 'Published by Kristen Rogers',
            )
          ],
        ),
      ),
    );
  }
}
