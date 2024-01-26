import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

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
        "icon": FontAwesome.key_solid,
        "title": "Security notifications",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": FontAwesome.lock_solid,
        "title": "Passkeys",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": FontAwesome.face_grimace_solid,
        "title": "E-mail address",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": FontAwesome.message_solid,
        "title": "Two-step verification",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": Bootstrap.bell_fill,
        "title": "Change number",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": FontAwesome.bars_progress_solid,
        "title": "Request account info",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": Bootstrap.globe,
        "title": "Add account",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": FontAwesome.circle_question_solid,
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
          children: <Widget>[],
        ),
      ),
    );
  }
}
