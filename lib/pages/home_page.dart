import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen2/theme.dart';
import 'package:splashscreen2/widget/home_category_item.dart';
import 'package:splashscreen2/widget/home_popular_item.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor9,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: kColor9,
          onTap: (value) {
            if (value == 1) {
              Navigator.pushNamed(context, '/wishlistpage');
            } else if (value == 2) {
              Navigator.pushNamed(context, '/profilepage');
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 24,
                color: kColor11,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_wishlist.png',
                  width: 24,
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
      body: Stack(
        children: [
          Image.asset(
            'assets/image_background.png',
          ),
          ListView(
            children: [
              //header atau title
              Container(
                margin: EdgeInsets.only(top: 24),
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 149,
                    ),
                    Image.asset(
                      'assets/image_cart.png',
                      width: 30,
                    ),
                  ],
                ),
              ),
              // NOTE: search bar
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/searchbar');
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    right: 24,
                    left: 24,
                  ),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: kColor10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Cari Emas mu',
                        style: kColor6style.copyWith(
                          fontSize: 16,
                          fontWeight: semibold,
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/search.png',
                        width: 24,
                      ),
                    ],
                  ),
                ),
              ),
              //NOTE : category
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  right: 34,
                  left: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: kColor3Style.copyWith(
                        fontSize: 20,
                        fontWeight: semibold,
                      ),
                    ),
                    Text(
                      'Show All',
                      style: kColor3Style.copyWith(
                        fontSize: 14,
                        fontWeight: reguler,
                      ),
                    ),
                  ],
                ),
              ),
              //NOTE : category carosel slider
              Container(
                margin: EdgeInsets.only(top: 5),
                child: CarouselSlider(
                  items: [
                    homecategoryitem(
                        title: 'MiniGold Love',
                        subtitle: 'Gift Series',
                        imageurl: 'assets/image_produk_categori1.png'),
                    homecategoryitem(
                        title: 'MiniGold Birthday',
                        subtitle: 'Gift Series',
                        imageurl: 'assets/image_produk_grid4.png'),
                    homecategoryitem(
                        title: 'MiniGold Love',
                        subtitle: 'Gift Series',
                        imageurl: 'assets/image_produk_categori1.png'),
                  ],
                  options: CarouselOptions(
                      height: 130,
                      enableInfiniteScroll: false,
                      viewportFraction: 1,
                      onPageChanged: (value, _) {
                        setState(() {
                          categoryIndex = value;
                        });
                      }),
                ),
              ),

              //NOTE : CATEGORY CAROUSEL INDIKATOR
              Container(
                margin: EdgeInsets.only(
                  top: 13,
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: categoryIndex == 0 ? kColor3 : kColor4,
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: categoryIndex == 1 ? kColor3 : kColor4,
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: categoryIndex == 2 ? kColor3 : kColor4,
                      ),
                    ),
                  ],
                ),
              ),

              //NOTE : POPULAR SELECTION
              Container(
                margin: EdgeInsets.only(
                  top: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  color: kColor9,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 24,
                        left: 24,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular',
                            style: kColor3Style.copyWith(
                              fontSize: 24,
                              fontWeight: semibold,
                            ),
                          ),
                          Text(
                            'Show All',
                            style: kColor3Style.copyWith(
                              fontSize: 14,
                              fontWeight: reguler,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 310,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            homepopularitem(
                              title: 'Happy Birthday',
                              imageurl: 'assets/image_produk_grid4.png',
                              kota: 'Kota Bandung',
                              rateing: '4.9 | Terjual 1 rb',
                              price: 35000,
                              diskon: 0,
                              wishlist: true,
                            ),
                            homepopularitem(
                              title: 'Happy Birthday',
                              imageurl: 'assets/image_produk_grid3.png',
                              kota: 'Kota Bandung',
                              rateing: '4.9 | Terjual 1 rb',
                              price: 35000,
                              diskon: 25000,
                              wishlist: false,
                            ),
                            homepopularitem(
                              title: 'Happy Birthday',
                              imageurl: 'assets/image_produk_grid2.png',
                              kota: 'Kota Bandung',
                              rateing: '4.9 | Terjual 1 rb',
                              price: 35000,
                              diskon: 25000,
                              wishlist: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
