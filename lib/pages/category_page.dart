import 'package:flutter/material.dart';
import 'package:splashscreen2/theme.dart';

import '../widget/home_category_item.dart';
import '../widget/produkitem.dart';

class categorypage extends StatelessWidget {
  const categorypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor2,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBar(
          elevation: 0,
          backgroundColor: kColor9,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left_sharp, //icon back material
                  color: kColor3,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Text(
                'MiniGold Love',
                style: kColor3Style.copyWith(
                  fontSize: 18,
                  fontWeight: semibold,
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/search.png',
                width: 24,
              ),
              SizedBox(
                width: 18,
              ),
              Image.asset(
                'assets/icon_filter.png',
                width: 24,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          SizedBox(
            height: 10,
          ),
          homecategoryitem(
            title: 'MiniGold Love',
            subtitle: 'Gift Series',
            imageurl: 'assets/image_produk_categori1.png',
          ),
          SizedBox(
            height: 24,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 18,
            runSpacing: 18,
            children: [
              produkitem(
                  title: 'Gift Series Happy Birth',
                  imageurl: 'assets/image_produk_list1.png',
                  price: 35000,
                  iswishlist: true),
              produkitem(
                  title: 'Gift Series Happy Birth',
                  imageurl: 'assets/image_produk_list1.png',
                  price: 35000,
                  iswishlist: true),
              produkitem(
                  title: 'Gift Series Happy Birth',
                  imageurl: 'assets/image_produk_list1.png',
                  price: 35000,
                  iswishlist: true),
              produkitem(
                  title: 'Gift Series Happy Birth',
                  imageurl: 'assets/image_produk_list1.png',
                  price: 35000,
                  iswishlist: true),
              produkitem(
                  title: 'Gift Series Happy Birth',
                  imageurl: 'assets/image_produk_list1.png',
                  price: 35000,
                  iswishlist: false)
            ],
          ),
        ],
      ),
    );
  }
}
