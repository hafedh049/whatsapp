import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class SecurityNotifications extends StatefulWidget {
  const SecurityNotifications({super.key});

  @override
  State<SecurityNotifications> createState() => _SecurityNotificationsState();
}

class _SecurityNotificationsState extends State<SecurityNotifications> {
  bool _securityState = false;
  late final List<Map<String, dynamic>> _items;

  @override
  void initState() {
    _items = <Map<String, dynamic>>[
      <String, dynamic>{
        "icon": FontAwesome.message_solid,
        "title": "Text and voice messages",
      },
      <String, dynamic>{
        "icon": FontAwesome.phone_solid,
        "title": "Audio and video calls",
      },
      <String, dynamic>{
        "icon": FontAwesome.paperclip_solid,
        "title": "E-Photo, videos and documents",
      },
      <String, dynamic>{
        "icon": FontAwesome.location_pin_solid,
        "title": "Location sharing",
      },
      <String, dynamic>{
        "icon": Bootstrap.signal,
        "title": "Status updates",
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Security notifications", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(child: CircleAvatar(radius: 40, backgroundColor: Colors.tealAccent, child: Icon(FontAwesome.lock_solid, size: 40, color: white))),
            const SizedBox(height: 30),
            const Text("Your chats and calls are private", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white)),
            const SizedBox(height: 20),
            Text(
              "End-to-end encryption keeps you personal messages and calls between you and the people you choose. Not even WhatsApp can read or listen to them. This includes your:",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6)),
            ),
            const SizedBox(height: 20),
            for (final Map<String, dynamic> item in _items) ...<Widget>[
              Row(
                children: <Widget>[
                  Icon(item["icon"], size: 15, color: green),
                  const SizedBox(width: 20),
                  Text(item["title"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                ],
              ),
              const SizedBox(height: 20),
            ],
            GestureDetector(
              onTap: () {},
              child: const Text("Learn more", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: blue)),
            ),
            const SizedBox(height: 20),
            Divider(thickness: .5, height: .5, color: white.withOpacity(.5)),
            const SizedBox(height: 20),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text("Show security notifications on this device", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white)),
                      const SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {},
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Get notified when your security code changes for a contact's phone in an end-to-end encrypted chat. If you have multiple devices, this setting must be enabled on each device where you want to get notifications. ",
                                style: TextStyle(fontSize: 12, color: white.withOpacity(.6), fontWeight: FontWeight.w500),
                              ),
                              const TextSpan(text: "Learn more", style: TextStyle(fontSize: 12, color: blue, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                StatefulBuilder(
                  builder: (BuildContext context, void Function(void Function()) _) {
                    return Switch(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: _securityState,
                      activeColor: green,
                      activeTrackColor: white.withOpacity(.1),
                      inactiveThumbColor: white.withOpacity(.6),
                      onChanged: (bool value) => _(() => _securityState = value),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
