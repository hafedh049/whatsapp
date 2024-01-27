import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  late final List<Map<String, dynamic>> _items;

  @override
  void initState() {
    _items = <Map<String, dynamic>>[
      <String, dynamic>{
        "icon": FontAwesome.circle_question_solid,
        "title": "Help Center",
        "subtitle": "",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": FontAwesome.people_group_solid,
        "title": "Contact us",
        "subtitle": "Questions? Need help?",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": FontAwesome.file_code_solid,
        "title": "Terms and Privacy Policy",
        "subtitle": "",
        "callback": () {},
      },
      <String, dynamic>{
        "icon": FontAwesome.info_solid,
        "title": "App info",
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
        title: const Text("Help", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[],
        ),
      ),
    );
  }
}
