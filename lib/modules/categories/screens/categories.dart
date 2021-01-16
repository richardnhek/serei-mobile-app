import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serei_app/providers/app_provider.dart';

import 'big_categories.dart';
import 'sub_categories.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final categoriesTab = [BigCategories(), SubCategories()];

  @override
  Widget build(BuildContext context) {
    SereiAppProvider sereiAppProvider =
        Provider.of<SereiAppProvider>(context, listen: false);
    return Scaffold(
      body: categoriesTab[sereiAppProvider.categoriesTabIndex],
    );
  }
}
