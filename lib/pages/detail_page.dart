import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:splashscreen2/theme.dart';

class detailpage extends StatefulWidget {
  const detailpage({Key? key}) : super(key: key);

  @override
  State<detailpage> createState() => _detailpageState();
}

//DetailPage
class _detailpageState extends State<detailpage> {
  Color IndikatorColor = Color(0xffC4C4C4);
  double IndikatorMargin = 5;
  int currentIndex = 1;
  bool isExpand = false;
  bool isShowReview = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: kColor9,
      body: Stack(
        children: [
          Image.asset(
            'assets/image_background.png',
          ),
          Container(
            margin: EdgeInsets.only(top: 95),
            child: Image.asset('assets/detail_produk$currentIndex.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 66,
                left: 20,
              ),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kColor9,
                border: Border.all(
                  color: kColor2,
                ),
              ),
              child: Icon(
                Icons.chevron_left,
              ),
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.4,
              maxChildSize: 0.95,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.vertical(
                      top: Radius.circular(40),
                    ),
                    color: kColor10,
                  ),
                  child: NotificationListener(
                    onNotification: (Notification notif) {
                      if (notif is ScrollEndNotification) {
                        if (notif.metrics.minScrollExtent == -1.0) {
                          setState(() {
                            isExpand = true;
                          });
                        } else {
                          setState(() {
                            isExpand = false;
                          });
                        }
                      }
                      return true;
                    },
                    child: SingleChildScrollView(
                        controller: scrollController,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 16,
                                ),
                                Center(
                                  child: Container(
                                    width: 30,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: kColor9,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Happy Birthday',
                                      style: kColor3Style.copyWith(
                                          fontSize: 24, fontWeight: semibold),
                                    ),
                                    Text(
                                      'Rp. 35.000',
                                      style: kColor3Style.copyWith(
                                        fontSize: 24,
                                        fontWeight: reguler,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Gift Series',
                                  style: kColor3Style.copyWith(
                                    fontSize: 18,
                                    fontWeight: reguler,
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  height: 50,
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Row(
                                        children: [
                                          // colorindikator(Color(0xffC4C4C4), 0),
                                          // colorindikator(Color(0xffC4C4C4), 1),
                                          // colorindikator(Color(0xffC4C4C4), 2),
                                          // colorindikator(Color(0xffC4C4C4), 3),
                                          // colorindikator(Color(0xffC4C4C4), 4),
                                          textIndikator('0,025 gram',
                                              Color(0xffC4C4C4), 0),
                                          textIndikator('0,05 gram',
                                              Color(0xffC4C4C4), 1),
                                          textIndikator(
                                              '0,1 gram', Color(0xffC4C4C4), 2),
                                          textIndikator('0,25 gram',
                                              Color(0xffC4C4C4), 3),
                                          textIndikator(
                                              '0,5 gram', Color(0xffC4C4C4), 4),
                                        ],
                                      ),
                                      AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        width: 40,
                                        height: 40,
                                        margin: EdgeInsets.only(
                                          left: IndikatorMargin,
                                        ),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: IndikatorColor,
                                          border: Border.all(
                                            width: 3,
                                            color: kColor9,
                                          ),
                                        ),
                                        child: Container(
                                          width: 20,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 12),
                                          child: Text(
                                            'Pilih',
                                            style: kColor3Style.copyWith(
                                              fontSize: 7,
                                              fontWeight: semibold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                                  style: kColor15style.copyWith(
                                    fontSize: 14,
                                    fontWeight: semibold,
                                    height: 1.8,
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                                  style: kColor15style.copyWith(
                                    fontSize: 14,
                                    fontWeight: semibold,
                                    height: 1.8,
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                                  style: kColor15style.copyWith(
                                    fontSize: 14,
                                    fontWeight: semibold,
                                    height: 1.8,
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                                  style: kColor15style.copyWith(
                                    fontSize: 14,
                                    fontWeight: semibold,
                                    height: 1.8,
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                                  style: kColor15style.copyWith(
                                    fontSize: 14,
                                    fontWeight: semibold,
                                    height: 1.8,
                                  ),
                                ),
                              ]),
                        )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: isShowReview
          ? null
          : isExpand
              ? Container(
                  width: double.infinity,
                  height: 315,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [kColor9.withOpacity(0.6), kColor9],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isShowReview = true;
                          });
                        },
                        child: Text(
                          'See More',
                          style: kColor11style.copyWith(
                            fontSize: 16,
                            fontWeight: semibold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kColor9,
                    boxShadow: [
                      BoxShadow(
                        color: kColor10,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(children: [
                    Container(
                      width: 56,
                      height: 49,
                      decoration: BoxDecoration(
                        color: kColor10,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/image_cart.png',
                          width: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        width: 265,
                        height: 56,
                        decoration: BoxDecoration(
                          color: kColor3,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Center(
                            child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Buy Now',
                            style: kColor9style.copyWith(
                              fontSize: 18,
                              fontWeight: semibold,
                            ),
                          ),
                        )),
                      ),
                    ),
                  ]),
                ),
    );
  }

  // Widget colorindikator(Color color, int index) {
  Widget textIndikator(String text, Color color, int index) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          IndikatorColor = color;
          IndikatorMargin = 5 + (index * 60);
          currentIndex = index + 1;
        });
      }),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        padding: EdgeInsets.symmetric(horizontal: 5),
        height: 50,
        width: 50,
        margin: EdgeInsets.only(right: 10),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              text,
              style: kColor3Style.copyWith(
                fontSize: 7,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
