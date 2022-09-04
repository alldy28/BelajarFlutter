import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:splashscreen2/theme.dart';
import 'package:intl/intl.dart';

class produkitem extends StatelessWidget {
  final String title;
  final String imageurl;
  final int price;
  final bool iswishlist;

  const produkitem({
    Key? key,
    required this.title,
    required this.imageurl,
    required this.price,
    required this.iswishlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: (MediaQuery.of(context).size.width - 82) / 2,
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Image.asset(imageurl),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: kColor3Style.copyWith(
              fontSize: 12,
              fontWeight: semibold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                NumberFormat.currency(
                        locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                    .format(price),
                style: kColor3Style.copyWith(
                  fontSize: 11,
                  fontWeight: semibold,
                ),
              ),
              Image.asset(
                iswishlist
                    ? 'assets/Wishlist_True.png'
                    : 'assets/Wishlist_False.png',
                width: 25,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
