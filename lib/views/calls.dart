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
    return ListView.builder(
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
                  const Text("Steve Thomas", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                  const SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      const Icon(FontAwesome., color: blue, size: 15),
                      const SizedBox(width: 5),
                      Text("I know that's what I said!", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white.withOpacity(.8))),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("09 : 49", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: white.withOpacity(.8))),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color: green),
                  child: Text("2", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: white.withOpacity(.8))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
