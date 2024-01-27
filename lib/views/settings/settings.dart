import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:whatsapp/views/settings/account/account.dart';
import 'package:whatsapp/views/settings/avatar/avatar.dart';
import 'package:whatsapp/views/settings/chats/chats_settings.dart';
import 'package:whatsapp/views/settings/notifications/notifications.dart';
import 'package:whatsapp/views/settings/privacy/privacy.dart';
import 'package:whatsapp/views/settings/storage/storage.dart';

import '../../utils/shared.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late final List<Map<String, dynamic>> _items;

  @override
  void initState() {
    _items = <Map<String, dynamic>>[
      <String, dynamic>{
        "icon": FontAwesome.key_solid,
        "title": "Account",
        "subtitle": "Security notifications, change number",
        "callback": () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Account())),
      },
      <String, dynamic>{
        "icon": FontAwesome.lock_solid,
        "title": "Privacy",
        "subtitle": "Block contacts, disappearing messages",
        "callback": () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Privacy())),
      },
      <String, dynamic>{
        "icon": FontAwesome.face_grimace_solid,
        "title": "Avatar",
        "subtitle": "Create, edit, profile photo",
        "callback": () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Avatar())),
      },
      <String, dynamic>{
        "icon": FontAwesome.message_solid,
        "title": "Chats",
        "subtitle": "Theme, wallpapers, chat history",
        "callback": () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ChatSettings())),
      },
      <String, dynamic>{
        "icon": Bootstrap.bell_fill,
        "title": "Notifications",
        "subtitle": "Message, group & call tones",
        "callback": () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Notifications())),
      },
      <String, dynamic>{
        "icon": FontAwesome.bars_progress_solid,
        "title": "Storage and data",
        "subtitle": "Network usage, auto-download",
        "callback": () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Storage())),
      },
      <String, dynamic>{
        "icon": Bootstrap.globe,
        "title": "App language",
        "subtitle": "English (device's language)",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": FontAwesome.circle_question_solid,
        "title": "Help",
        "subtitle": "Help center, contact us, privacy policy",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": Bootstrap.people_fill,
        "title": "Invite a friend",
        "subtitle": "",
        "callback": () {},
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Settings", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesome.magnifying_glass_solid, size: 20, color: white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const CircleAvatar(backgroundImage: AssetImage("assets/images/me.jpg"), radius: 30),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text("Hafedh Guenichi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white, letterSpacing: 1.5)),
                      const SizedBox(height: 5),
                      Text("Busy", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesome.qrcode_solid, color: green, size: 25),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesome.circle_chevron_down_solid, color: green, size: 25),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              for (final Map<String, dynamic> item in _items) ...<Widget>[
                GestureDetector(
                  onTap: item["callback"],
                  child: Row(
                    children: <Widget>[
                      Icon(item["icon"], color: white.withOpacity(.6), size: 20),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(item["title"], style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                          if (item["subtitle"].isNotEmpty) ...<Widget>[
                            const SizedBox(height: 5),
                            Text(item["subtitle"], style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
              const SizedBox(height: 20),
              Center(
                child: Column(
                  children: <Widget>[
                    Text("from", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(FontAwesome.meta_brand, size: 12, color: white),
                        SizedBox(width: 5),
                        Text("Meta", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: white)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
