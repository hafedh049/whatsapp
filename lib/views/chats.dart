import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:whatsapp/utils/shared.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final List<Widget> _choices = <Widget>[
    GestureDetector(
      child: Row(
        children: <Widget>[
          Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: AssetImage("assets/images/me."), fit: BoxFit.cover)),
          ),
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
                    const Icon(FontAwesome.check_double_solid, color: blue),
                    const SizedBox(width: 5),
                    Text("I know that's what I said!", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white.withOpacity(.8))),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
  ];

  final int _itemCount = 20;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemBuilder: (BuildContext context, int index) => _choices[index % _choices.length],
      itemCount: _itemCount,
      separatorBuilder: (BuildContext context, int index) => Divider(thickness: .5, color: white.withOpacity(.6)),
    );
  }
}
