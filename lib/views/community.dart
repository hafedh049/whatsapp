import 'package:flutter/material.dart';
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
          const Text(
            "Communities bring members together in topic-based groups, and male it easy to get admin announcements. Any community you're added to will appear here.",
            style: TextStyle(color: white, fontSize: 12),
          ),
          const Row(
            children: <Widget>[
              Text("Stay connected with a community"),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            child: const Text("Stay connected with a community"),
          ),
        ],
      ),
    );
  }
}
