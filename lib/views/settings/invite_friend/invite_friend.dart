import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Invite a friend", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: ListView.separated(itemBuilder: (BuildContext context, int index) =>_items[index]["type"] == "header" ? Row(children: <Widget>[ const CircleAvatar(radius: 20,backgroundColor: green,child: Icon(FontAwesome.share_solid,size: 25,color: white),),],):_items[index]["type"] == "share_link" ? :  ,itemCount: 50,separatorBuilder: (BuildContext  context, int index) => const SizedBox(height: 20),),
    );
  }
}
