import 'package:flutter/material.dart';

class SubCategoriesTile extends StatelessWidget {
  SubCategoriesTile({this.subTitle, this.subImage, this.subColor});

  final String subTitle;
  final String subImage;
  final int subColor;

  @override
  Widget build(BuildContext context) {
    List<Color> colorList = [
      Color(0xFFC1666F),
      Color(0xFF5E7B73),
      Color(0xFF9990E1),
      Color(0xFF85A7C0),
      Color(0xFF3DB0D0),
      Color(0xFF49475A)
    ];
    return GestureDetector(
        child: Container(
      height: 143,
      width: 110,
      child: Card(
        elevation: 20,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  subTitle,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Kano",
                      color: Color(0xFF49475A)),
                ),
              ),
              Container(
                width: 10,
              )
            ]),
            Expanded(
              child: Image(
                alignment: Alignment.bottomCenter,
                image: AssetImage(subImage),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
