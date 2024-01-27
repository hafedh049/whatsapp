import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  late final Map<String, List<Map<String, dynamic>>> _notificationGroups;

  @override
  void initState() {
    _notificationGroups = <String, List<Map<String, dynamic>>>{
      "": <Map<String, dynamic>>[
        <String, dynamic>{
          "type": 3,
          "title": "Conversation tones",
          "subtitle": "Play sounds for incoming and outgoing messages.",
          "state": true,
          "callback": () {},
        },
      ],
      "Messages": <Map<String, dynamic>>[
        <String, dynamic>{
          "type": 1,
          "title": "Notification tone",
          "subtitle": "Default (Snappy)",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Vibrate",
          "subtitle": "Off",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 3,
          "title": "Popup notification",
          "subtitle": "Not available",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Light",
          "subtitle": "Purple",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 2,
          "title": "Use high priority notifications",
          "subtitle": "Show previews of notifications at the top of the screen",
          "state": true,
          "callback": () {},
        },
        <String, dynamic>{
          "type": 2,
          "title": "Reaction Notifications",
          "subtitle": "Show notifications for reactions to messages you send",
          "state": true,
          "callback": () {},
        },
      ],
      "Groups": <Map<String, dynamic>>[
        <String, dynamic>{
          "type": 1,
          "title": "Notification tone",
          "subtitle": "Default (Snappy)",
          "callback": () {},
        },
      ],
      "Others": <Map<String, dynamic>>[
        <String, dynamic>{
          "type": 1,
          "title": "Chat backup",
          "subtitle": "",
          "icon": Bootstrap.cloud_arrow_up_fill,
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Transfer chats",
          "subtitle": "",
          "icon": FontAwesome.door_open_solid,
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Chat history",
          "subtitle": "",
          "icon": FontAwesome.clock_rotate_left_solid,
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
        title: const Text("Notifications", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
    );
  }
}
