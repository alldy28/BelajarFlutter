import 'package:carousel_slider/carousel_slider.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen2/theme.dart';
import 'package:splashscreen2/widget/onboarding_item.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentIndex = 0;
  CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: [
                onboarding_item(
                  imageurl: 'assets/image_onbording1.png',
                  title: 'Pengiriman Bisa COD',
                  subtitle:
                      'Pembembalian lebih aman dan terjamin keasliannya jika bertemu langsung dengan sang penjual',
                ),
                onboarding_item(
                  imageurl: 'assets/image_onbording2.png',
                  title: 'Pembelian Dimana Pun Dan Kapan pun',
                  subtitle:
                      'Pembembalian lebih aman dan terjamin keasliannya jika bertemu langsung dengan sang penjual',
                ),
                onboarding_item(
                  imageurl: 'assets/image_onbording3.png',
                  title: 'Lebih Praktis dan Nyaman',
                  subtitle:
                      'Pembembalian lebih aman dan terjamin keasliannya jika bertemu langsung dengan sang penjual',
                ),
              ],
              options: CarouselOptions(
                  height: double.infinity,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  initialPage: currentIndex,
                  onPageChanged: (index, _) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              carouselController: controller,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      controller.animateToPage(2);
                    },
                    child: Text(
                      'SKIP',
                      style: kColor3Style.copyWith(
                        fontSize: 18,
                      ),
                    )),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 0 ? kColor3 : kColor5,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 1 ? kColor3 : kColor5,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 2 ? kColor3 : kColor5,
                      ),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {
                      if (currentIndex == 2) {
                        Navigator.pushNamed(context, '/signinpage');
                      }

                      controller.nextPage();
                    },
                    child: Text(
                      'NEXT',
                      style: kColor3Style.copyWith(
                        fontSize: 18,
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 14,
          )
        ],
      ),
    );
  }
}
