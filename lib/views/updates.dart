import 'package:flutter/material.dart';
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
          const Text("Status", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
          const SizedBox(height: 10),
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
        ],
      ),
    );
  }
}
