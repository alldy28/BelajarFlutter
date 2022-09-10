import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen2/theme.dart';
import 'package:splashscreen2/widget/profile_menu_item.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  bool isLigtmode = true;
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 500),
      opacity: opacity,
      child: Scaffold(
        backgroundColor: isLigtmode ? null : kColor14,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            backgroundColor: isLigtmode ? kColor9 : kColor12,
            onTap: (value) {
              if (value == 0) {
                Navigator.pushNamed(context, '/home');
              } else if (value == 1) {
                Navigator.pushNamed(context, '/wishlistpage');
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_home.png',
                  width: 24,
                  color: isLigtmode ? null : kColor9,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icon_wishlist.png',
                    width: 24,
                    color: isLigtmode ? null : kColor9,
                  ),
                  label: 'wishlist'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icon_profile.png',
                    width: 24,
                    color: kColor11,
                  ),
                  label: 'profile'),
            ],
          ),
        ),
        body: Stack(children: [
          Image.asset(
            'assets/image_background.png',
          ),
          ListView(
            children: [
              SizedBox(
                height: 130,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 24,
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/foto_profile.png',
                              width: 120,
                            ),
                            SizedBox(
                              height: 36,
                            ),
                            Text(
                              'Alldy Maulana',
                              style: kColor3Style.copyWith(
                                fontSize: 24,
                                fontWeight: medium,
                                color: isLigtmode ? null : kColor9,
                              ),
                            )
                          ]),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLigtmode = !isLigtmode;
                            opacity = 0;
                          });
                          Timer(Duration(milliseconds: 200), () {
                            setState(() {
                              opacity = 1;
                            });
                          });
                        },
                        child: Container(
                          width: 88,
                          height: 44,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              100,
                            ),
                            color: isLigtmode ? kColor4 : kColor12,
                          ),
                          child: AnimatedAlign(
                            duration: Duration(microseconds: 500),
                            alignment: isLigtmode
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            child: Image.asset(
                              isLigtmode
                                  ? 'assets/icon_switch_dark.png'
                                  : 'assets/icon_switch_light.png',
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 32,
                ),
                decoration: BoxDecoration(
                  color: isLigtmode ? kColor10 : kColor13,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(36),
                  ),
                ),
                child: Column(
                  children: [
                    profilemanuitem(
                      iconUrl: 'assets/person.png',
                      title: 'My Profile',
                      isLightmode: isLigtmode,
                    ),
                    profilemanuitem(
                      iconUrl: 'assets/map.png',
                      title: 'My Address',
                      isLightmode: isLigtmode,
                    ),
                    profilemanuitem(
                      iconUrl: 'assets/shopping.png',
                      title: 'My Order',
                      isLightmode: isLigtmode,
                    ),
                    profilemanuitem(
                      iconUrl: 'assets/creditcard.png',
                      title: 'Payment Method',
                      isLightmode: isLigtmode,
                    ),
                    profilemanuitem(
                      iconUrl: 'assets/heart.png',
                      title: 'My Wishlist',
                      isLightmode: isLigtmode,
                    ),
                    profilemanuitem(
                      iconUrl: 'assets/question.png',
                      title: 'Frequently Asked Questions',
                      isLightmode: isLigtmode,
                    ),
                    profilemanuitem(
                      iconUrl: 'assets/headphones.png',
                      title: 'Customer Care',
                      isLightmode: isLigtmode,
                    ),
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
