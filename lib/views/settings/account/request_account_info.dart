import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class RequestAccountInfo extends StatelessWidget {
  const RequestAccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Request account info", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
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
