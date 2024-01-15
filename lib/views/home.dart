import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:whatsapp/utils/shared.dart';
import 'package:whatsapp/views/chats.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final PageController _pageController = PageController();
  late final TabController _tabsController;

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
              Tab(text: "Updates"),
              Tab(text: "Calls"),
            ],
          ),
          StatefulBuilder(
            key: null,
            builder: (BuildContext context, void Function(void Function()) _) {
              return GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Icon(Bootstrap.archive, size: 20, color: white),
                    const SizedBox(width: 20),
                    Text("I know that's what I said!", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white.withOpacity(.8))),
                  ],
                ),
              );
            },
          ),
          Expanded(child: TabBarView(controller: _tabsController, children: <Widget>[for (int i = 0; i < 4; i++) const Chats()])),
        ],
      ),
    );
  }
}
