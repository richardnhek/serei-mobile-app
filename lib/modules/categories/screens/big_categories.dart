import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:serei_app/providers/app_provider.dart';
import 'package:provider/provider.dart';
import 'package:serei_app/widgets/categories/categories_tile.dart';
import 'big_categories_ui.dart';

class BigCategories extends StatefulWidget {
  @override
  _BigCategoriesState createState() => _BigCategoriesState();
}

class _BigCategoriesState extends State<BigCategories> {
  List<CategoriesTile> categoriesList = [
    CategoriesTile(
      categoriesTitle: "Graphic" +
          "\n"
              "Design",
      categoriesIcon: Icon(
        Icons.brush_sharp,
        color: Colors.white,
        size: 35.0,
      ),
      categoriesImage: AssetImage(
          'assets/images/categories/graphicdesign/android/graphicdesign.png'),
      categoriesColor: Color(0xFFC1666F),
    ),
    CategoriesTile(
      categoriesColor: Color(0xFF5E7B73),
      categoriesTitle: "Digital" + "\n" + "Marketing",
      categoriesIcon: Icon(
        Icons.phone_android_rounded,
        color: Colors.white,
        size: 30.0,
      ),
      categoriesImage: AssetImage(
          'assets/images/categories/digitalmarketing/android/digitalmarketing.png'),
    ),
    CategoriesTile(
      categoriesColor: Color(0xFF9990E1),
      categoriesTitle: "Video &" + "\n" + "Animation",
      categoriesIcon: Icon(
        CupertinoIcons.video_camera_solid,
        color: Colors.white,
        size: 30.0,
      ),
      categoriesImage: AssetImage(
          'assets/images/categories/video&animation/android/video&animation.png'),
    ),
    CategoriesTile(
      categoriesColor: Color(0xFF85A7C0),
      categoriesTitle: "Writing &" + "\n" + "Translation",
      categoriesIcon: Icon(
        CupertinoIcons.pencil,
        color: Colors.white,
        size: 25.0,
      ),
      categoriesImage: AssetImage(
          'assets/images/categories/writing&translation/android/writing&translation.png'),
    ),
    CategoriesTile(
      categoriesColor: Color(0xFF3DB0D0),
      categoriesTitle: "Sports &" + "\n" + "Physio",
      categoriesIcon: Icon(
        Icons.directions_run,
        color: Colors.white,
        size: 30.0,
      ),
      categoriesImage:
          AssetImage('assets/images/categories/sports/android/sports.png'),
    ),
    CategoriesTile(
      categoriesColor: Color(0xFF49475A),
      categoriesTitle: "Music &" + "\n" + "FX Audio",
      categoriesIcon: Icon(Icons.music_note, color: Colors.white, size: 30.0),
      categoriesImage:
          AssetImage('assets/images/categories/music&fx/android/music&fx.png'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SereiAppProvider sereiAppProvider = Provider.of<SereiAppProvider>(context);
    return BigCategoriesUI(
      categoriesList: categoriesList,
    );
  }
}
