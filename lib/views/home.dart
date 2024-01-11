import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:whatsapp/utils/shared.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WHATSAPP", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Bootstrap.grid_3x3_gap, size: 15, color: white),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Bootstrap.people, size: 20, color: white),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Bootstrap.people, size: 20, color: white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
