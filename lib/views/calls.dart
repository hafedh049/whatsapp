import 'dart:math';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:whatsapp/utils/shared.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onLongPress: () {},
            onTap: () {},
            child: Row(
              children: <Widget>[
                Container(width: 50, height: 50, decoration: const BoxDecoration(shape: BoxShape.circle, color: green), child: const Icon(FontAwesome.link_solid, size: 20, color: black)),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text("Create call link", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                      const SizedBox(height: 5),
                      Text("Share a link for your whatsapp call", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.8))),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text("Recent", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: GestureDetector(
                  onLongPress: () {},
                  onTap: () {},
                  child: Row(
                    children: <Widget>[
                      Container(width: 60, height: 60, decoration: const BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: AssetImage("assets/images/me.jpg"), fit: BoxFit.cover))),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text("Hafedh Guenichi", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                            Row(
                              children: <Widget>[
                                Icon(Random().nextBool() ? Icons.call_missed : Icons.call_received, color: Random().nextBool() ? green : Colors.red, size: 15),
                                const SizedBox(width: 5),
                                Text(formatDate(DateTime.now(), <String>[yyyy, '-', mm, '-', dd, " ", HH, ':', nn, ':', ss, " ", am]), style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white.withOpacity(.8))),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(Random().nextBool() ? Icons.video_call : Icons.call, color: green, size: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
