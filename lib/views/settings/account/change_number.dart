import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class ChangeNumber extends StatelessWidget {
  const ChangeNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Change number", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 65,
                backgroundColor: green.withOpacity(.05),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(FontAwesome.sim_card_solid, size: 45, color: green),
                    SizedBox(width: 1),
                    Icon(FontAwesome.ellipsis_solid, size: 25, color: green),
                    SizedBox(width: 1),
                    Icon(FontAwesome.sim_card_solid, size: 45, color: green),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Changing you phone number will migrate you account info, groups & settings.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white),
            ),
            const SizedBox(height: 20),
            Text(
              "Before proceeding, please confirm that you are able to receive SMS or calls at your new number.",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6)),
            ),
            const SizedBox(height: 20),
            Text(
              "If you have both a new phone & a new number, first change you number on your old phone.",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6)),
            ),
            const Spacer(),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: green),
                  child: const Text("Next", style: TextStyle(color: black, fontSize: 12, fontWeight: FontWeight.w500)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
