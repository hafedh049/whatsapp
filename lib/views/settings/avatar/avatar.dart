import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Avatar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 40),
            Center(child: Image.asset("assets/images/avatar.png", width: MediaQuery.sizeOf(context).width)),
            const SizedBox(height: 20),
            const Center(child: Text("Say more with Avatars now on WhatsApp", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white))),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: green),
                child: const Text("Create your Avatar", style: TextStyle(color: black, fontSize: 12, fontWeight: FontWeight.w500)),
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {},
              child: const Text("Learn more", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: blue)),
            ),
          ],
        ),
      ),
    );
  }
}
