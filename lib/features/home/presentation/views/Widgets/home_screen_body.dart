import 'package:flutter/material.dart';
import '../../../../../core/utils/Styles.dart';
import 'List_view_best_seller.dart';
import 'best_seller_listView_item.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_home.dart';

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(top: 46.6, left: 30, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: CustomAppBar(),
            ),
            SizedBox(
              height: 46,
            ),
            ListViewHome(),
            SizedBox(
              height: 50,
            ),
            Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 20,
            ),
             ListViewOfBestSeller() ,
          ],
        ));
  }
}
