import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  bool _privacyState = true;
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
          "title": "Last seen and online",
          "subtitle": "Everyone",
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
        title: const Text("Privacy", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            StatefulBuilder(
              builder: (BuildContext context, void Function(void Function()) _) {
                return !_privacyState
                    ? const SizedBox()
                    : Container(
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: green.withOpacity(.05)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Icon(FontAwesome.lock_solid, size: 25, color: green),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text("Privacy checkup", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                                  const SizedBox(height: 5),
                                  GestureDetector(
                                    onTap: () {},
                                    child: RichText(
                                      text: const TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(text: "Control your privacy and choose the right settings for you. ", style: TextStyle(fontSize: 14, color: white, fontWeight: FontWeight.w500)),
                                          TextSpan(text: "Start checkup", style: TextStyle(fontSize: 14, color: Colors.green, fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _(() => _privacyState = false),
                              child: Icon(FontAwesome.x_solid, size: 15, color: white.withOpacity(.6)),
                            ),
                          ],
                        ),
                      );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
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
            )
          ],
        ),
      ),
    );
  }
}
