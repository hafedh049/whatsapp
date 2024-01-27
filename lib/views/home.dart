import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:whatsapp/utils/shared.dart';
import 'package:whatsapp/views/call/calls.dart';
import 'package:whatsapp/views/chat/chats.dart';
import 'package:whatsapp/views/community/community.dart';
import 'package:whatsapp/views/settings/settings.dart';
import 'package:whatsapp/views/updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final PageController _pageController = PageController();
  final GlobalKey<State> _floatKey = GlobalKey<State>();
  int _float = 0;
  late final TabController _tabsController;
  final List<Widget> _tabs = <Widget>[const Community(), const Chats(), const Updates(), const Calls()];
  final List<List<dynamic>> _floats = <List<dynamic>>[
    <dynamic>[() {}],
    <dynamic>[() {}, FontAwesome.message_solid],
    <dynamic>[() {}, FontAwesome.camera_solid, FontAwesome.pen_solid],
    <dynamic>[() {}, Icons.phone],
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabsController = TabController(length: 4, vsync: this);
    _items = <String, void Function()>{
      "New Group": () {},
      "New broadcast": () {},
      "Linked devices": () {},
      "Starred messages": () {},
      "Settings": () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Settings())),
    };
    super.initState();
  }

  late final Map<String, void Function()> _items;

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
          PopupMenuButton<String>(
            iconColor: white,
            iconSize: 25,
            onSelected: (String value) => _items[value]!(),
            itemBuilder: (BuildContext context) {
              return _items.keys.map((String choice) => PopupMenuItem<String>(value: choice, child: Text(choice))).toList();
            },
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
            onTap: (int value) => _floatKey.currentState!.setState(() => _float = value),
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
      floatingActionButton: StatefulBuilder(
        key: _floatKey,
        builder: (BuildContext context, void Function(void Function()) _) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              for (final IconData icon in _floats[_float].skip(1).toList().reversed) ...<Widget>[
                GestureDetector(
                  onTap: _floats[_float].first,
                  child: Container(
                    padding: EdgeInsets.all(icon == _floats[_float][1] ? 12 : 8),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: icon == _floats[_float][1] ? green : blue),
                    child: Icon(icon, size: icon == _floats[_float][1] ? 25 : 15, color: icon == _floats[_float][1] ? black : white),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ],
          );
        },
      ),
    );
  }
}
