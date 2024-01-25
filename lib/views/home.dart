import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:whatsapp/utils/shared.dart';
import 'package:whatsapp/views/calls.dart';
import 'package:whatsapp/views/chat/chats.dart';
import 'package:whatsapp/views/community/community.dart';
import 'package:whatsapp/views/updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final PageController _pageController = PageController();
  late final TabController _tabsController;
  final List<Widget> _tabs = <Widget>[const Community(), const Chats(), const Updates(), const Calls()];
  final List<List<IconData>> _floats = <List<IconData>>[
    <IconData>[],
    <IconData>[],
    <IconData>[],
    <IconData>[],
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabsController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: white, letterSpacing: 1.5)),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Bootstrap.camera, size: 23, color: white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Bootstrap.search, size: 20, color: white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Bootstrap.grid_3x3_gap, size: 20, color: white),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TabBar(
            indicatorColor: green,
            overlayColor: null,
            dividerHeight: 0,
            labelColor: green,
            controller: _tabsController,
            tabs: const <Tab>[
              Tab(icon: Icon(Bootstrap.people, size: 20, color: white)),
              Tab(text: "Chats"),
              Tab(text: "Updates ⦿"),
              Tab(text: "Calls"),
            ],
          ),
          Expanded(child: TabBarView(controller: _tabsController, children: _tabs)),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[],
      ),
    );
  }
}
