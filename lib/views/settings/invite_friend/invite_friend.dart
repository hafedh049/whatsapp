import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class InviteFriend extends StatefulWidget {
  const InviteFriend({super.key});

  @override
  State<InviteFriend> createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
  final List<Map<String, dynamic>> _items = <Map<String, dynamic>>[
    <String, dynamic>{},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Invite a friend", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) => _items[index]["type"] == "share_link"
            ? GestureDetector(
                onTap: () {},
                child: const Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: green,
                      child: Icon(FontAwesome.share_solid, size: 25, color: white),
                    ),
                    SizedBox(width: 20),
                    Text("Share a link", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                  ],
                ),
              )
            : _items[index]["type"] == "header"
                ? Text(_items[index]["header"], style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6)))
                : GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: white.withOpacity(.6),
                          backgroundImage: AssetImage(_items[index]["image_url"]),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(_items[index]["title"], style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
        itemCount: 50,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
      ),
    );
  }
}
