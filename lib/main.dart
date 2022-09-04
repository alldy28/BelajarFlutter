import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen2/pages/category_page.dart';
import 'package:splashscreen2/pages/detail_page.dart';
import 'package:splashscreen2/pages/home_page.dart';
import 'package:splashscreen2/pages/onboarding.dart';
import 'package:splashscreen2/pages/profile_page.dart';
import 'package:splashscreen2/pages/search_page.dart';
import 'package:splashscreen2/pages/search_result_page.dart';
import 'package:splashscreen2/pages/sign_in_page.dart';
import 'package:splashscreen2/pages/splash.dart';
import 'package:splashscreen2/pages/wishlist_page.dart';
import 'package:splashscreen2/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Splash(),
        '/onboarding': (context) => onboarding(),
        '/signinpage': (context) => signinpage(),
        '/home': (context) => homepage(),
        '/searchbar': (context) => searchpage(),
        '/searchresultpage': (context) => searchresultpage(),
        '/pagecategory': (context) => categorypage(),
        '/wishlistpage': (context) => wishlistpage(),
        '/profilepage': (context) => profilepage(),
        '/detailpage': (context) => detailpage(),
      },
    );
  }
}
