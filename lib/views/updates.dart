import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:whatsapp/utils/shared.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: <Widget>[
                Text("Status", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                Spacer(),
                Text("See all", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: green)),
                SizedBox(width: 5),
                Icon(FontAwesome.chevron_right_solid, color: green, size: 13),
              ],
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onLongPress: () {},
            onTap: () {},
            child: Row(
              children: <Widget>[
                Container(width: 50, height: 50, decoration: const BoxDecoration(shape: BoxShape.circle, color: green, image: DecorationImage(image: AssetImage("assets/images/me.jpg"), fit: BoxFit.cover))),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text("My status", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                      const SizedBox(height: 5),
                      Text("Tap to add status update", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.8))),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 40,
            child: StatefulBuilder(
              builder: (BuildContext context, void Function(void Function()) _) => ListView.separated(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10),
                itemBuilder: (BuildContext context, int index) => const CircleAvatar(radius: 30, backgroundColor: white, child: CircleAvatar(radius: 28, backgroundColor: white, backgroundImage: AssetImage("assets/images/me.jpg"))),
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: <Widget>[
                Text("Channels", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                Spacer(),
                Icon(FontAwesome.plus_solid, color: white, size: 20),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
