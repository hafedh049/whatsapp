import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class PassKeys extends StatelessWidget {
  const PassKeys({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Passkeys", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(child: CircleAvatar(radius: 60, backgroundColor: green.withOpacity(.05), child: const Icon(FontAwesome.user_shield_solid, size: 50, color: green))),
            const SizedBox(height: 30),
            const Text("A simple way to sign in safely", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white)),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "You can use your fingerprint, face, or screen lock to verify if it's you with a passkey. Your passkeys are safely stored in a password manager. ",
                      style: TextStyle(fontSize: 14, color: white.withOpacity(.6), fontWeight: FontWeight.w500),
                    ),
                    const TextSpan(text: "Learn more", style: TextStyle(fontSize: 14, color: blue, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                alignment: Alignment.center,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: green),
                child: const Text("Create a passkey", style: TextStyle(color: black, fontSize: 12, fontWeight: FontWeight.w500)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
