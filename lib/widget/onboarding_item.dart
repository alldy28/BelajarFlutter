import 'package:flutter/material.dart';

import '../theme.dart';

class onboarding_item extends StatelessWidget {
  final String imageurl;
  final String title;
  final String subtitle;

  const onboarding_item({
    Key? key, 
    required this.imageurl, 
    required this.subtitle, 
    required this.title,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [  
            SizedBox(
              height: 99,
            ),
            Image.asset(imageurl,
            width: double.infinity,
            ),
            SizedBox(
              height: 40,
            ),
            Text(title,
            style: kColor3Style.copyWith(
              fontSize: 20, fontWeight: bold,
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(subtitle,
            style: kColor1Style.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
            ),
            ],
            );
  }
}