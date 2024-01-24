import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:lottie/lottie.dart';
import 'package:whatsapp/utils/shared.dart';

class StartCommunity extends StatefulWidget {
  const StartCommunity({super.key});

  @override
  State<StartCommunity> createState() => _StartCommunityState();
}

class _StartCommunityState extends State<StartCommunity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: <Widget>[
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(FontAwesome.chevron_right_solid, size: 10, color: green),
            ),
          ),
          LottieBuilder.asset("assets/lotties/community.json", reverse: true),
          const Text("Create a new community", style: TextStyle(color: white, fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Flexible(
            child: Text(
              "Bring together a neighborhood, school or more. Create topic-based groups for members, and easily send them admin announcements.",
              style: TextStyle(color: white.withOpacity(.6), fontSize: 12),
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
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: green),
              alignment: Alignment.center,
              width: MediaQuery.sizeOf(context).width,
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: const Text("Get started", style: TextStyle(color: black, fontSize: 12)),
            ),
          ),
        ],
      ),
    );
  }
}
