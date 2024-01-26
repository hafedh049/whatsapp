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
          children: <Widget>[
            Text("Account information", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: white.withOpacity(.6))),
            const SizedBox(height: 20),
            Divider(height: .5, thickness: .5, color: white.withOpacity(.6)),
            const SizedBox(height: 20),
            Row(
              children: <Widget>[
                Icon(FontAwesome.file_code_solid, size: 15, color: white.withOpacity(.6)),
                const SizedBox(width: 20),
                const Text("Request account report", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: white)),
              ],
            ),
            const SizedBox(height: 20),
            Text(item["subtitle"], style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: white.withOpacity(.6))),
            const SizedBox(height: 20),
            Divider(height: .5, thickness: .5, color: white.withOpacity(.6)),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
