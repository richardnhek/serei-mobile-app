import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesTile extends StatelessWidget {
  CategoriesTile(
      {this.categoriesTitle,
      this.categoriesIcon,
      this.categoriesImage,
      this.categoriesColor});

  final String categoriesTitle;
  final Icon categoriesIcon;
  final AssetImage categoriesImage;
  final Color categoriesColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202.0,
      width: 156.0,
      child: Card(
        elevation: 15.0,
        color: categoriesColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      categoriesTitle,
                      style: TextStyle(
                          fontFamily: "Kano",
                          fontSize: 18.0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: categoriesIcon)
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: Image(
                  alignment: Alignment.bottomCenter,
                  image: categoriesImage,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
