import 'package:flutter/material.dart';
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
            decoration: BoxDecoration(shape: BoxShape.circle),
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
