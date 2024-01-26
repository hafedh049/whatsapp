import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class TwoStepVerification extends StatelessWidget {
  const TwoStepVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Two-step verification", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: green.withOpacity(.05),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(color: green, borderRadius: BorderRadius.circular(5)),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(FontAwesome.star_of_life_solid, size: 20, color: black),
                      SizedBox(width: 5),
                      Icon(FontAwesome.star_of_life_solid, size: 20, color: black),
                      SizedBox(width: 5),
                      Icon(FontAwesome.star_of_life_solid, size: 20, color: black),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "For extra security, turn on two-step verification, which will require a PIN when registering your phone number with Whatsapp again",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6)),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: green),
                  child: const Text("Turn on", style: TextStyle(color: black, fontSize: 12, fontWeight: FontWeight.w500)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
