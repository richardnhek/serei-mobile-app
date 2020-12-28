import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serei_app/providers/app_provider.dart';
import 'package:serei_app/utils/ui/device_utils.dart';
import 'package:serei_app/widgets/categories/categories_tile.dart';
import 'package:serei_app/widgets/app_search_bar.dart';

class BigCategoriesUI extends StatelessWidget {
  BigCategoriesUI({this.categoriesList});

  final List<CategoriesTile> categoriesList;
  @override
  Widget build(BuildContext context) {
    SereiAppProvider sereiAppProvider = Provider.of<SereiAppProvider>(context);
    return SafeArea(
      child: Column(children: [
        Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                    fontSize: 22.0, fontFamily: "Biko", color: Colors.blue),
              )
            ],
          ),
        ),
        Expanded(
          child: Stack(fit: StackFit.loose, children: [
            GridView.count(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              padding:
                  EdgeInsets.only(top: 100, bottom: 20, left: 20, right: 20),
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              children: categoriesList,
            ),
            AppSearchBar(),
          ]),
        ),
      ]),
    );
  }
}
