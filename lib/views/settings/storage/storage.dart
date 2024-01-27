import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class Storage extends StatefulWidget {
  const Storage({super.key});

  @override
  State<Storage> createState() => _StorageState();
}

class _StorageState extends State<Storage> {
  late final Map<String, List<Map<String, dynamic>>> _notificationGroups;

  @override
  void initState() {
    _notificationGroups = <String, List<Map<String, dynamic>>>{
      "": <Map<String, dynamic>>[
        <String, dynamic>{
          "type": 1,
          "title": "Conversation tones",
          "subtitle": "Play sounds for incoming and outgoing messages.",
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
        <String, dynamic>{
          "type": 1,
          "title": "Vibrate",
          "subtitle": "Off",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Light",
          "subtitle": "White",
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
      "Others": <Map<String, dynamic>>[
        <String, dynamic>{
          "type": 1,
          "title": "Ringtone",
          "subtitle": "Default (Starry Night)",
          "callback": () {},
        },
        <String, dynamic>{
          "type": 1,
          "title": "Vibrate",
          "subtitle": "Off",
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
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              for (final MapEntry<String, List<Map<String, dynamic>>> group in _notificationGroups.entries) ...<Widget>[
                if (group.key.isNotEmpty) ...<Widget>[
                  Text(group.key, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: white.withOpacity(.6))),
                  const SizedBox(height: 20),
                ],
                for (Map<String, dynamic> item in group.value) ...<Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 40, child: item["icon"] != null ? Icon(item["icon"], size: 20, color: white.withOpacity(.6)) : null),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(item["title"], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: item["type"] == 3 ? white.withOpacity(.3) : white)),
                            if (item["subtitle"].isNotEmpty) ...<Widget>[
                              const SizedBox(height: 5),
                              Text(item["subtitle"], style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: item["type"] == 3 ? white.withOpacity(.3) : white.withOpacity(.6))),
                            ],
                          ],
                        ),
                      ),
                      if (item["type"] != 1) const SizedBox(width: 10),
                      item["type"] == 2
                          ? StatefulBuilder(
                              builder: (BuildContext context, void Function(void Function()) _) {
                                return Switch(
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  value: item["state"],
                                  activeColor: green,
                                  activeTrackColor: white.withOpacity(.1),
                                  inactiveThumbColor: white.withOpacity(.6),
                                  onChanged: (bool value) => _(() => item["state"] = value),
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
      ),
    );
  }
}
