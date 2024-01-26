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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: green.withOpacity(.05),
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(color: green, borderRadius: BorderRadius.circular(5)),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(FontAwesome.star, size: 25, color: black),
                    SizedBox(width: 5),
                    Icon(FontAwesome.star, size: 25, color: black),
                    SizedBox(width: 5),
                    Icon(FontAwesome.star, size: 25, color: black),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text("A simple way to sign in safely", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white)),
        ],
      ),
    );
  }
}
