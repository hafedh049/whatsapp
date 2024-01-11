import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    _tabsController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WHATSAPP", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white)),
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Bootstrap.people, size: 20, color: white),
                    ),
                    Expanded(
                      child: TabBar(
                        indicatorColor: green,
                        overlayColor: null,
                        dividerHeight: 0,
                        labelColor: green,
                        controller: _tabsController,
                        tabs: const <Tab>[Tab(text: "Chats"), Tab(text: "Channels"), Tab(text: "Calls")],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Bootstrap.search, size: 18, color: white),
                    ),
                  ],
                ),
                Expanded(child: TabBarView(controller: _tabsController, children: <Widget>[for (int i = 0; i < 3; i++) const Chats()])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
