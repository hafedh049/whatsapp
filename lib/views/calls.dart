import 'dart:math';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/utils/shared.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) => GestureDetector(
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
                  const SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Icon(Random().nextBool() ? Icons.call_missed : Icons.call_end, color: Random().nextBool() ? green : Colors.red, size: 15),
                      const SizedBox(width: 5),
                      Text(formatDate(DateTime.now(), <String>[yyyy, '-', mm, '-', dd, " ", HH, ':', nn, ':', ss, " ", am]), style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white.withOpacity(.8))),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            const Icon(Icons.call, color: green, size: 15),
          ],
        ),
      ),
    );
  }
}
