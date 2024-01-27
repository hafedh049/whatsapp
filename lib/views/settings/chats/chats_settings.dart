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
        title: const Text("Chats", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            for (final MapEntry<String, List<Map<String, dynamic>>> group in _privacyGroups.entries) ...<Widget>[
              Text(group.key, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: white.withOpacity(.6))),
              const SizedBox(height: 20),
              for (Map<String, dynamic> item in group.value) ...<Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(item["title"], style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: white)),
                          const SizedBox(height: 5),
                          Text(item["subtitle"], style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: white.withOpacity(.6))),
                        ],
                      ),
                    ),
                    if (item["type"] != 1) const SizedBox(width: 10),
                    item["type"] == 3
                        ? Text(item["state"], style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: white.withOpacity(.6)))
                        : item["type"] == 2
                            ? StatefulBuilder(
                                builder: (BuildContext context, void Function(void Function()) _) {
                                  return Switch(
                                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    value: item["radio_state"],
                                    activeColor: green,
                                    activeTrackColor: white.withOpacity(.1),
                                    inactiveThumbColor: white.withOpacity(.6),
                                    onChanged: (bool value) => _(() => item["radio_state"] = value),
                                  );
                                },
                              )
                            : const SizedBox(),
                  ],
                ),
                const SizedBox(height: 20),
              ],
              Divider(height: .5, thickness: .5, color: white.withOpacity(.6)),
              const SizedBox(height: 20),
            ],
          ],
        ),
      ),
    );
  }
}
