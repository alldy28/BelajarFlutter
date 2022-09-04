import 'package:flutter/material.dart';
import 'package:splashscreen2/theme.dart';

class homecategoryitem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageurl;

  const homecategoryitem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/pagecategory');
      },
      child: Container(
        height: 123,
        width: MediaQuery.of(context).size.width - (2 * 24),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 102,
                decoration: BoxDecoration(
                  color: kColor10,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: kColor3Style.copyWith(
                            fontSize: 16,
                            fontWeight: semibold,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          subtitle,
                          style: kColor6style.copyWith(
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              imageurl,
            ),
          ],
        ),
      ),
    );
  }
}
