import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../utils/shared.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Settings", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesome.searchengin_brand, size: 20, color: white),
          ),
        ],
      ),
    );
  }
}
