import 'package:flutter/material.dart';
import 'package:serei_app/widgets/categories/sub_categories_tile.dart';

class SubCategoriesUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SubCategoriesTile(
              subTitle: "Logo" + "\n" + "Design",
              subColor: 0,
              subImage:
                  "assets/images/sub_categories/logo design/3.0x/logodesign.png",
            ),
          ],
        ),
      ),
    );
  }
}
