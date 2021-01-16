import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serei_app/providers/app_provider.dart';
import 'package:serei_app/utils/ui/device_utils.dart';
import 'package:serei_app/widgets/title_bar/title_bar_one.dart';

class ProfileScreenUI extends StatelessWidget {
  ProfileScreenUI({this.title});

  final TitleBarOne title;

  @override
  Widget build(BuildContext context) {
    SereiAppProvider sereiAppProvider = Provider.of<SereiAppProvider>(context);
    final mq = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(alignment: Alignment.topCenter, children: [
            Container(
              decoration: new BoxDecoration(
                color: Color(0xFF204E9B),
                image: new DecorationImage(
                  image: new AssetImage("assets/images/logo/test_logo.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              height: DeviceUtils.getResponsive(
                  sereiAppProvider: sereiAppProvider,
                  mq: mq,
                  onPhone: mq.size.height / 3.5,
                  onTablet: mq.size.height / 3.5),
              child: Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 60),
                  child: title),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: DeviceUtils.getResponsive(
                      sereiAppProvider: sereiAppProvider,
                      mq: mq,
                      onPhone: mq.size.height / 5,
                      onTablet: mq.size.height / 5),
                  left: 25,
                  right: 25),
              child: Container(
                width: DeviceUtils.getResponsive(
                    sereiAppProvider: sereiAppProvider,
                    mq: mq,
                    onPhone: mq.size.width,
                    onTablet: mq.size.width),
                height: DeviceUtils.getResponsive(
                    sereiAppProvider: sereiAppProvider,
                    mq: mq,
                    onPhone: mq.size.height / 1.5,
                    onTablet: mq.size.height / 1.5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.16),
                          spreadRadius: 5,
                          offset: Offset(5, 5),
                          blurRadius: 10)
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.toggle_off,
                              color: Color(0xFF204E9B),
                              size: 36,
                            ),
                          ),
                          IconButton(
                              icon: new Image.asset(
                                "assets/icons/edit.png",
                                width: 22,
                                height: 22,
                              ),
                              onPressed: () => {print("Edit Profile")}),
                        ],
                      ),
                      Text(
                        "Vansen Tech",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Kano"),
                      ),
                      SizedBox(
                        height: 2.5,
                      ),
                      Text(
                        "vansentechlead@chris.galaxy",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF8B8B8B),
                            fontFamily: "Kano"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        color: Color(0xFFF4F5F6),
                        thickness: 1.5,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: DeviceUtils.getResponsive(
                      sereiAppProvider: sereiAppProvider,
                      mq: mq,
                      onPhone: mq.size.height / 8,
                      onTablet: mq.size.height / 8)),
              child: CircleAvatar(
                radius: 48,
                backgroundColor: Color(0xFFECECEC),
                child: CircleAvatar(
                  radius: 44.5,
                  backgroundImage: AssetImage(
                      "assets/images/test/android/profile/techlead.png"),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
