import 'package:flutter/material.dart';
import 'package:splashscreen2/theme.dart';
import 'package:intl/intl.dart';

class produk_list_item extends StatelessWidget {
  final String title;
  final int price;
  final String imageUrl;

  const produk_list_item({
    Key? key,
    required this.title,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(
        bottom: 18,
      ),
      decoration: BoxDecoration(
        color: kColor9,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 60,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: kColor3Style.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                NumberFormat.currency(
                  locale: 'id',
                  symbol: 'Rp ',
                  decimalDigits: 0,
                ).format(price),
                style: kColor3Style.copyWith(
                  fontSize: 10,
                  fontWeight: semibold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
