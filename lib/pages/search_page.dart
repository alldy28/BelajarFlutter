import 'package:flutter/material.dart';
import 'package:splashscreen2/theme.dart';
import 'package:splashscreen2/widget/produk_list_item.dart';

class searchpage extends StatelessWidget {
  const searchpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor2,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: AppBar(
          automaticallyImplyLeading: false, //mematikan icon bawaan appbar
          backgroundColor: kColor9, //color
          elevation: 0, //menghilangkan shadow
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
              )
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(height: 41),
          Text(
            'Recommendation',
            style: kColor3Style.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
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
      ),
    );
  }
}
