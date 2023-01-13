import 'package:flutter/material.dart';

class Defaults {
  static final Color drawerItemColor = Colors.blueGrey;
  static final Color drawerItemSelectedColor = Color.fromARGB(255, 10, 126, 241);
  static final Color drawerSelectedTileColor = Color.fromARGB(255, 136, 185, 225);

  static final drawerItemText = [
    'Inbox',
    'Starred',
    'Sent',
    'Drafts',
    'Trash',
    'Spam',
  ];

  static final drawerItemIcon = [
    Icons.inbox,
    Icons.star,
    Icons.send,
    Icons.mail,
    Icons.delete,
    Icons.warning_rounded,
  ];
}
