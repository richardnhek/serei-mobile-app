import 'package:flutter/material.dart';
import 'package:serei_app/widgets/app_search_bar.dart';
import 'package:serei_app/widgets/inbox/chat_tile.dart';

class InboxScreenUI extends StatelessWidget {
  InboxScreenUI({this.chatList});

  final List<ChatTile> chatList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Container(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Inbox",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: "Biko",
                      color: Color(0xFF204E9B)),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.filter_list,
                    color: Color(0xFF204E9B),
                    size: 36,
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Stack(fit: StackFit.loose, children: [
            GridView.count(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 1,
                childAspectRatio: 3,
                mainAxisSpacing: 0,
                padding:
                    EdgeInsets.only(top: 100, bottom: 20, left: 20, right: 20),
                children: chatList),
            AppSearchBar(
              hintText: "Search message...",
            ),
          ]),
        ),
      ]),
    );
  }
}
