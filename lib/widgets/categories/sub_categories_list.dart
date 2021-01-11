import 'package:flutter/material.dart';

import 'sub_categories_tile.dart';

class SubCategoriesList extends StatelessWidget {
  SubCategoriesList({this.subList, this.listTitle});

  final List<SubCategoriesTile> subList;
  final String listTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(fit: StackFit.loose, children: [
        GridView.count(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          childAspectRatio: 1,
          padding: EdgeInsets.only(top: 100, bottom: 20, left: 20, right: 20),
          mainAxisSpacing: 10.0,
          children: subList,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          listTitle.toUpperCase(),
          style: TextStyle(fontSize: 16, inherit: true),
        )
      ]),
    );
  }
}
