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
      "Who can see my personal info": <Map<String, dynamic>>[
        <String, dynamic>{
          "type": 1,
          "title": "Last seen and online",
          "subtitle": "Everyone",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Profile photo",
          "subtitle": "Everyone",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "About",
          "subtitle": "Everyone",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Status",
          "subtitle": "My contacts",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 2,
          "title": "Read receipts",
          "subtitle": "If turned off, you won't send or receive Read receipts. Read receipts are always sent for group chats.",
          "radio_state": true,
          "callback": () {},
        },
      ],
      "Disappearing messages": <Map<String, dynamic>>[
        <String, dynamic>{
          "type": 3,
          "title": "Default message timer",
          "subtitle": "Start new chats with disappearing messages set to your timer.",
          "state": "Off",
          "callback": () {},
        },
      ],
      "Others": <Map<String, dynamic>>[
        <String, dynamic>{
          "type": 1,
          "title": "Groups",
          "subtitle": "Everyone",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Live location",
          "subtitle": "None",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Calls",
          "subtitle": "Silence unknown callers",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Blocked contacts",
          "subtitle": "None",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Fingerprint lock",
          "subtitle": "Disabled",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Advanced",
          "subtitle": "Protect IP address in calls",
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
