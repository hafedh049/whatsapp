import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class ChatSettings extends StatefulWidget {
  const ChatSettings({super.key});

  @override
  State<ChatSettings> createState() => _ChatSettingsState();
}

class _ChatSettingsState extends State<ChatSettings> {
  late final Map<String, List<Map<String, dynamic>>> _privacyGroups;

  @override
  void initState() {
    _privacyGroups = <String, List<Map<String, dynamic>>>{
      "Display": <Map<String, dynamic>>[
        <String, dynamic>{
          "type": 1,
          "title": "Theme",
          "subtitle": "Dark",
          "icon": FontAwesome.sun_solid,
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Wallpaper",
          "subtitle": "",
          "icon": FontAwesome.image_portrait_solid,
          "callback": () {},
        },
      ],
      "Chat settings": <Map<String, dynamic>>[
        <String, dynamic>{
          "type": 2,
          "title": "Enter is send",
          "subtitle": "Enter key will send your message",
          "state": false,
          "callback": () {},
        },
        <String, dynamic>{
          "type": 2,
          "title": "Media visibility",
          "subtitle": "Show newly downloaded media in your device's gallery",
          "state": true,
          "callback": () {},
        },
        <String, dynamic>{
          "type": 2,
          "title": "Instant video messages",
          "subtitle": "Lets you tap to switch between using voice and video messages",
          "state": false,
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Font size",
          "subtitle": "Small",
          "icon": null,
          "callback": () {},
        },
      ],
      "Archived chats": <Map<String, dynamic>>[
        <String, dynamic>{
          "type": 2,
          "title": "Keep chats archived",
          "subtitle": "Archived chats will remain archived when you receive a new message",
          "state": true,
          "callback": () {},
        },
      ],
      "Others": <Map<String, dynamic>>[
        <String, dynamic>{
          "type": 1,
          "title": "Chat backup",
          "subtitle": "",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Transfer chats",
          "subtitle": "None",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Calls",
          "subtitle": "Silence unknown callers",
          "callback": () {},
        },
      ],
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Chats", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[],
        ),
      ),
    );
  }
}
