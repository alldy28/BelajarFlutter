import 'package:flutter/material.dart';
import 'package:splashscreen2/theme.dart';

class profilemanuitem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final bool isLightmode;

  const profilemanuitem({
    Key? key,
    required this.iconUrl,
    required this.title,
    required this.isLightmode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 24,
            color: isLightmode ? null : kColor9,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: kColor3Style.copyWith(
              fontSize: 16,
              fontWeight: semibold,
              color: isLightmode ? null : kColor9,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: isLightmode ? kColor3 : kColor9,
          ),
        ],
      ),
    );
  }
}
