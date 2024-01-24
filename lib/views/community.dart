import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:lottie/lottie.dart';
import 'package:whatsapp/utils/shared.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          LottieBuilder.asset("assets/lotties/community.json", reverse: true),
          const Text("Stay connected with a community", style: TextStyle(color: white, fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Flexible(
            child: Text(
              "Communities bring members together in topic-based groups, and male it easy to get admin announcements. Any community you're added to will appear here.",
              style: TextStyle(color: white, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {},
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("See example communities", style: TextStyle(color: green, fontSize: 12)),
                SizedBox(width: 5),
                Icon(FontAwesome.chevron_right_solid, size: 10, color: green),
              ],
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: green),
              alignment: Alignment.center,
              width: MediaQuery.sizeOf(context).width,
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: const Text("Start your community", style: TextStyle(color: black, fontSize: 12)),
            ),
          ),
        ],
      ),
    );
  }
}
