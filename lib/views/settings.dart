import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../utils/shared.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final List<Map<String, dynamic>> _items = <Map<String, dynamic>>[
    <String, dynamic>{
      "icon": FontAwesome.key_solid,
      "title": "Account",
      "subtitle": "Security notifications, change number",
      "callback": () {},
    },
    <String, dynamic>{
      "icon": FontAwesome.lock_solid,
      "title": "Privacy",
      "subtitle": "Block contacts, disappearing messages",
      "callback": () {},
    },
    <String, dynamic>{
      "icon": FontAwesome.aviato_brand,
      "title": "Avatar",
      "subtitle": "Create, edit, profile photo",
      "callback": () {},
    },
    <String, dynamic>{
      "icon": FontAwesome.message,
      "title": "Chats",
      "subtitle": "Theme, wallpapers, chat history",
      "callback": () {},
    },
    <String, dynamic>{
      "icon": FontAwesome.bell,
      "title": "Notifications",
      "subtitle": "Message, group & call tones",
      "callback": () {},
    },
    <String, dynamic>{
      "icon": FontAwesome.bars_progress_solid,
      "title": "Storage and data",
      "subtitle": "Network usage, auto-download",
      "callback": () {},
    },
    <String, dynamic>{
      "icon": Bootstrap.balloon,
      "title": "App language",
      "subtitle": "English (device's language)",
      "callback": () {},
    },
    <String, dynamic>{
      "icon": FontAwesome.question_solid,
      "title": "Help",
      "subtitle": "Help center, contact us, privacy policy",
      "callback": () {},
    },
    <String, dynamic>{
      "icon": FontAwesome.people_group_solid,
      "title": "Invite a friend",
      "subtitle": "",
      "callback": () {},
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Settings", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesome.searchengin_brand, size: 20, color: white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[],
        ),
      ),
    );
  }
}
