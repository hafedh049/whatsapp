import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:whatsapp/views/settings/account/email_address.dart';
import 'package:whatsapp/views/settings/account/passkeys.dart';
import 'package:whatsapp/views/settings/account/security_notifications.dart';

import '../../../utils/shared.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  late final List<Map<String, dynamic>> _items;

  @override
  void initState() {
    _items = <Map<String, dynamic>>[
      <String, dynamic>{
        "icon": FontAwesome.shield_halved_solid,
        "title": "Security notifications",
        "callback": () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SecurityNotifications())),
      },
      <String, dynamic>{
        "icon": FontAwesome.user_secret_solid,
        "title": "Passkeys",
        "callback": () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const PassKeys())),
      },
      <String, dynamic>{
        "icon": FontAwesome.envelope_solid,
        "title": "E-mail address",
        "callback": () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const EmailAddress())),
      },
      <String, dynamic>{
        "icon": FontAwesome.rectangle_list_solid,
        "title": "Two-step verification",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": Bootstrap.door_open,
        "title": "Change number",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": FontAwesome.file_code_solid,
        "title": "Request account info",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": Bootstrap.person_plus_fill,
        "title": "Add account",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": FontAwesome.bucket_solid,
        "title": "Delete account",
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
        title: const Text("Account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            for (final Map<String, dynamic> item in _items) ...<Widget>[
              GestureDetector(
                onTap: item["callback"],
                child: Row(
                  children: <Widget>[
                    Icon(item["icon"], color: white.withOpacity(.6), size: 20),
                    const SizedBox(width: 20),
                    Text(item["title"], style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ],
        ),
      ),
    );
  }
}
