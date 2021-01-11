import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:serei_app/providers/app_provider.dart';

class ChatTile extends StatelessWidget {
  ChatTile({this.profilePath, this.profileName, this.msg});

  final String profilePath;
  final String profileName;
  final String msg;

  static DateTime currentDateData = DateTime.now();
  static DateFormat dateFormat = DateFormat.yMMMMd('en_US');
  String currentDate = dateFormat.format(currentDateData);

  @override
  Widget build(BuildContext context) {
    SereiAppProvider sereiAppProvider = Provider.of<SereiAppProvider>(context);
    final mq = MediaQuery.of(context);
    return GestureDetector(
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profilePath),
                backgroundColor: Colors.white,
                radius: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          profileName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: "Kano"),
                        ),
                        Text(
                          currentDate,
                          style: TextStyle(fontSize: 10, fontFamily: "Kano"),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      msg,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: "Kano",
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
