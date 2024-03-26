import 'package:ewaa_newz_app/screens/widgets/widget_category.dart';
import 'package:ewaa_newz_app/screens/widgets/widget_list_info.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF0F1FA)),
                      borderRadius: BorderRadius.all(Radius.circular(55))),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF0F1FA)),
                      borderRadius: BorderRadius.all(Radius.circular(55))),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.close)),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF0F1FA)),
                      borderRadius: BorderRadius.all(Radius.circular(55))),
                  hintStyle: const TextStyle(
                    color: Colors.black87,
                  ),
                  hintText: 'COVID New Variant',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14),
                                      topRight: Radius.circular(14))),
                              height: 315,
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Filter',
                                          style: TextStyle(
                                              fontFamily: 'NunitoSans',
                                              color: Color(0xff041E2F),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 22),
                                        ),
                                        OutlinedButton(
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    'assets/deleteIcon.png'),
                                                const SizedBox(
                                                  width: 6,
                                                ),
                                                const Text(
                                                  'Reset',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'NunitoSans',
                                                      color: Color(0xff041E2F)),
                                                )
                                              ],
                                            ))
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Sort By',
                                      style: TextStyle(
                                          fontFamily: 'NunitoSans',
                                          color: Color(0xff041E2F),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Row(
                                      children: [
                                        WidgetCategory(
                                          text: 'Recommended',
                                          textColor: Color(0xff041E2F),
                                          color: Colors.transparent,
                                          width: 114,
                                          height: 32,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        WidgetCategory(
                                          text: 'Latest',
                                          textColor: Color(0xff041E2F),
                                          color: Colors.transparent,
                                          width: 66,
                                          height: 32,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        WidgetCategory(
                                          text: 'Most Viewed',
                                          textColor: Color(0xff041E2F),
                                          color: Colors.transparent,
                                          width: 104,
                                          height: 32,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Row(
                                      children: [
                                        WidgetCategory(
                                          text: 'Channel',
                                          textColor: Color(0xff041E2F),
                                          color: Colors.transparent,
                                          width: 77,
                                          height: 32,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        WidgetCategory(
                                          text: 'Following',
                                          textColor: Color(0xff041E2F),
                                          color: Colors.transparent,
                                          width: 86,
                                          height: 32,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xffFF3A44))),
                                          onPressed: () {},
                                          child: const Text(
                                            'SAVE',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'NunitoSans',
                                                color: Color(0xffFFFFFF),
                                                fontWeight: FontWeight.w800),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 32,
                        width: 90,
                        decoration: BoxDecoration(
                            color: const Color(0xffFF3A44),
                            border: Border.all(color: const Color(0xffF0F1FA)),
                            borderRadius: BorderRadius.circular(16)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.filter_alt_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'Filter',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const WidgetCategory(
                      width: 110,
                      height: 32,
                      text: 'Healthy',
                      textColor: Colors.black,
                      color: Colors.transparent,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const WidgetCategory(
                      text: 'Technology',
                      color: Colors.transparent,
                      textColor: Color(0xff2E0505),
                      width: 130,
                      height: 32,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const WidgetCategory(
                      text: 'Finance',
                      color: Colors.transparent,
                      textColor: Color(0xff2E0505),
                      width: 110,
                      height: 32,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: RichText(
                  text: const TextSpan(
                    text: 'About 11,130,000 results for',
                    style: TextStyle(color: Colors.black87),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' COVID New Variant.',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const WidgetListInfo(
                  image: 'assets/image3_home.png',
                  text1: 'What to do if you'
                      're planning or attending a \nwedding during the pandemic'
                      '',
                  text2: 'Matt Villano',
                  text3: 'Sunday, 9 May 2021',
                  height: 40,
                  width: 139),
              const SizedBox(
                height: 10,
              ),
              const WidgetListInfo(
                image: 'assets/doctors.jpeg',
                text1:
                    'Doctors on digital front lines help fight \nIndia’s Covid surge',
                text2: 'Shepard Smith',
                text3: 'Friday, 7 May 2021',
                height: 40,
                width: 133,
              ),
              const SizedBox(
                height: 10,
              ),
              const WidgetListInfo(
                image: 'assets/image2_home.jpeg',
                text1: '4 ways families can ease anxiety together',
                text2: 'Zain Korsgaard',
                text3: 'Sunday, 9 May 2021',
                height: 60,
                width: 124,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
