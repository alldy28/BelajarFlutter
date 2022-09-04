import 'package:flutter/material.dart';
import 'package:splashscreen2/theme.dart';

import '../widget/produkitem.dart';
import '../widget/sekelaton_item.dart';

class wishlistpage extends StatefulWidget {
  const wishlistpage({Key? key}) : super(key: key);

  @override
  State<wishlistpage> createState() => _wishlistpageState();
}

class _wishlistpageState extends State<wishlistpage> {
  bool isLoading = true;
  bool isshowgrid = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), (() {
      setState(() {
        isLoading = false;
      });
    }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: kColor9,
          onTap: (value) {
            if (value == 0) {
              Navigator.pushNamed(context, '/home');
            } else if (value == 2) {
              Navigator.pushNamed(context, '/profilepage');
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 24,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_wishlist.png',
                  width: 24,
                  color: kColor11,
                ),
                label: 'wishlist'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_profile.png',
                  width: 24,
                ),
                label: 'profile'),
          ],
        ),
      ),
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
                'Wishlist',
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
            height: 30,
          ),
          isLoading ? buildLoading() : buildGrid(),
        ],
      ),
    );
  }

  Widget buildLoading() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        sekelaton_item(),
        sekelaton_item(),
        sekelaton_item(),
        sekelaton_item(),
        sekelaton_item(),
        sekelaton_item(),
        sekelaton_item(),
        sekelaton_item(),
      ],
    );
  }

  Widget buildGrid() {
    return Wrap(
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
    );
  }
}
