import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Delete this account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
    );
  }
}
