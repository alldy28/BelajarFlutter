import 'package:flutter/material.dart';
import 'package:splashscreen2/theme.dart';
import 'package:intl/intl.dart';

class homepopularitem extends StatelessWidget {
  final String title;
  final String imageurl;
  final String kota;
  final String rateing;
  final int price;
  final bool wishlist;
  final int diskon;

  const homepopularitem({
    Key? key,
    required this.title,
    required this.imageurl,
    required this.kota,
    required this.rateing,
    required this.price,
    required this.wishlist,
    required this.diskon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detailpage');
      },
      child: Container(
        height: 350,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.only(left: 24),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 180,
                decoration: BoxDecoration(
                  color: kColor10,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: kColor3.withOpacity(0.2),
                        blurRadius: 6,
                        offset: Offset(1, 1)),
                  ],
                ),
                child: Center(
                  child: Image.asset(
                    imageurl,
                    width: 160,
                  ),
                ),
              ),
              Container(
                width: 200,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                    color: kColor9,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: kColor3.withOpacity(0.2),
                        blurRadius: 6,
                        offset: Offset(1, 1),
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: kColor3Style.copyWith(
                        fontSize: 18,
                        fontWeight: semibold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      kota,
                      style: kColor3Style.copyWith(
                        fontSize: 11,
                        fontWeight: semibold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      rateing,
                      style: kColor3Style.copyWith(
                        fontWeight: semibold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          NumberFormat.currency(
                                  locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                              .format(price + diskon),
                          style: kColor3Style.copyWith(
                            fontSize: 11,
                            fontWeight: semibold,
                          ),
                        ),
                        Image.asset(
                          wishlist
                              ? 'assets/Wishlist_True.png'
                              : 'assets/Wishlist_False.png',
                          width: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
