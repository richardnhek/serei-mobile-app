import 'package:flutter/material.dart';
import 'package:serei_app/widgets/categories/sub_categories_tile.dart';

import 'sub_categories_ui.dart';

class SubCategories extends StatefulWidget {
  SubCategories({this.subType});

  final int subType;

  @override
  _SubCategoriesState createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<SubCategories> {
  List<SubCategoriesTile> subs = [];

  @override
  Widget build(BuildContext context) {
    return SubCategoriesUI();
  }
}
