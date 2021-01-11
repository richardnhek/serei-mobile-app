import 'package:flutter/material.dart';
import 'package:serei_app/widgets/inbox/chat_tile.dart';

import 'inbox_screen_ui.dart';

class InboxScreen extends StatefulWidget {
  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  List<ChatTile> chatList = [
    ChatTile(
      profilePath: 'assets/images/test/android/profile/techlead.png',
      profileName: 'Tech Lead',
      msg:
          'Hello, I am Tech Lead, today I will be teaching you about how to blink your eyes while coding to ensure efficient results and a pay raise. Lorem ipsum lol what am I doing with my life',
    ),
    ChatTile(
      profilePath: 'assets/images/test/android/profile/techlead.png',
      profileName: 'Tech Lead',
      msg:
          'Hello, I am Tech Lead, today I will be teaching you about how to blink your eyes while coding to ensure',
    ),
    ChatTile(
      profilePath: 'assets/images/test/android/profile/techlead.png',
      profileName: 'Tech Lead',
      msg:
          'Hello, I am Tech Lead, today I will be teaching you about how to blink your eyes while coding to ensure efficient results and a pay raise.',
    ),
    ChatTile(
      profilePath: 'assets/images/test/android/profile/techlead.png',
      profileName: 'Tech Lead',
      msg:
          'Hello, I am Tech Lead, today I will be teaching you about how to blink your eyes while coding to ensure efficient results and a pay raise.',
    ),
    ChatTile(
      profilePath: 'assets/images/test/android/profile/techlead.png',
      profileName: 'Tech Lead',
      msg:
          'Hello, I am Tech Lead, today I will be teaching you about how to blink your eyes while coding to ensure efficient results and a pay raise.',
    ),
    ChatTile(
      profilePath: 'assets/images/test/android/profile/techlead.png',
      profileName: 'Tech Lead',
      msg:
          'Hello, I am Tech Lead, today I will be teaching you about how to blink your eyes while coding to ensure efficient results and a pay raise.',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return InboxScreenUI(
      chatList: chatList,
    );
  }
}
