import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final int _itemCount = 20;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder:(BuildContext context,int index) =>  ,itemCount: _itemCount,separatorBuilder: (BuildContext context,int index) => ,);
  }
}
