import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:splashscreen2/widget/produkitem.dart';
import 'package:splashscreen2/widget/sekelaton_item.dart';
import '../theme.dart';
import '../widget/produk_list_item.dart';

class searchresultpage extends StatefulWidget {
  const searchresultpage({Key? key}) : super(key: key);

  @override
  State<searchresultpage> createState() => _searchresultpageState();
}

class _searchresultpageState extends State<searchresultpage> {
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 110),
          child: AppBar(
            automaticallyImplyLeading: false, //mematikan icon bawaan appbar
            backgroundColor: kColor9, //color
            elevation: 0, //menghilangkan shadow
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  }, //untuk menu tombol kembali
                  child: Icon(
                    Icons.chevron_left_sharp, //icon back material
                    color: kColor3,
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Expanded(
                  //sama seperti container tetapi sudah responsip
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: kColor10,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            textInputAction: TextInputAction.go,
                            onFieldSubmitted: (Value) {
                              Navigator.pushNamed(context, '/searchresultpage');
                            },
                            decoration:
                                InputDecoration.collapsed(hintText: 'Search'),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.close,
                          color: kColor3,
                        ),
                      ],
                    ),
                  ),
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
            bottom: TabBar(
              indicatorColor: kColor3,
              labelColor: kColor3,
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Reguler Series',
                ),
                Tab(
                  text: 'Gift Series',
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            buildBody(),
            buildBody(),
            buildBody(),
          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Result for :  Gift Series',
              style: kColor3Style.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isshowgrid = !isshowgrid;
                });
              },
              child: Image.asset(
                isshowgrid ? 'assets/list_category.png' : 'assets/grid.png',
                width: 24,
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        isLoading
            ? buildLoading()
            : isshowgrid
                ? buildGrid()
                : buildlist(),
      ],
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

  Widget buildlist() {
    return Wrap(
      children: [
        produk_list_item(
            title: 'Happy Birthday',
            price: 35000,
            imageUrl: 'assets/image_produk_list1.png'),
        produk_list_item(
            title: 'Love',
            price: 35000,
            imageUrl: 'assets/image_produk_list2.png'),
        produk_list_item(
            title: 'Happy Birthday',
            price: 35000,
            imageUrl: 'assets/image_produk_list3.png'),
        produk_list_item(
            title: 'Happy Birthday',
            price: 35000,
            imageUrl: 'assets/image_produk_list1.png'),
        produk_list_item(
            title: 'Love',
            price: 35000,
            imageUrl: 'assets/image_produk_list2.png'),
        produk_list_item(
            title: 'Happy Birthday',
            price: 35000,
            imageUrl: 'assets/image_produk_list3.png'),
      ],
    );
  }
}
