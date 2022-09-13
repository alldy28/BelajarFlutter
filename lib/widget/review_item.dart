import 'package:flutter/material.dart';
import 'package:splashscreen2/theme.dart';

class reviewitem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String review;
  final List<String> items;

  const reviewitem({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.review,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 52,
          ),
          SizedBox(
            width: 35,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: kColor3Style.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: kColor8,
                  ),
                  Icon(
                    Icons.star,
                    color: kColor8,
                  ),
                  Icon(
                    Icons.star,
                    color: kColor8,
                  ),
                  Icon(
                    Icons.star,
                    color: kColor8,
                  ),
                  Icon(
                    Icons.star,
                    color: kColor8,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text.rich(TextSpan(text: review, style: kColor15style, children: [
                TextSpan(
                  text: 'more',
                  style: kColor3Style,
                )
              ]))
            ],
          ))
        ],
      ),
    );
  }
}
