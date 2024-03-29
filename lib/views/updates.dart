import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:whatsapp/utils/shared.dart';
import 'package:whatsapp/views/channel/channel.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  final Map<String, IconData> _icons = <String, IconData>{"image": FontAwesome.image_solid, "video": FontAwesome.video_solid, "link": FontAwesome.link_solid};
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: <Widget>[
                Text("Status", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                Spacer(),
                Text("See all", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: green)),
                SizedBox(width: 5),
                Icon(FontAwesome.chevron_right_solid, color: green, size: 13),
              ],
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onLongPress: () {},
            onTap: () {},
            child: Row(
              children: <Widget>[
                Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    Container(width: 50, height: 50, decoration: const BoxDecoration(shape: BoxShape.circle, color: green, image: DecorationImage(image: AssetImage("assets/images/me.jpg"), fit: BoxFit.cover))),
                    Container(padding: const EdgeInsets.all(2), decoration: BoxDecoration(shape: BoxShape.circle, color: green, border: Border.all()), child: const Icon(FontAwesome.plus_solid, size: 13, color: white)),
                  ],
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text("My status", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                      const SizedBox(height: 5),
                      Text("Tap to add status update", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.8))),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 60,
            child: StatefulBuilder(
              builder: (BuildContext context, void Function(void Function()) _) => ListView.separated(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10),
                itemBuilder: (BuildContext context, int index) => const CircleAvatar(radius: 30, backgroundColor: green, child: CircleAvatar(radius: 28, backgroundColor: white, backgroundImage: AssetImage("assets/images/me.jpg"))),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              const Text("Channels", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesome.plus_solid, color: white, size: 20),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Channel())),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  height: 160,
                  width: MediaQuery.sizeOf(context).width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Row(
                        children: <Widget>[
                          CircleAvatar(radius: 15, backgroundImage: AssetImage("assets/images/me.jpg")),
                          SizedBox(width: 10),
                          Text("Roya Palestine - رؤيا فلسطين", style: TextStyle(color: white, fontSize: 20, fontWeight: FontWeight.w500)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Icon(_icons[_icons.keys.elementAt(index % _icons.length)], size: 12, color: white.withOpacity(.8)),
                      const SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          Flexible(child: Text("a" * 200, style: TextStyle(color: white.withOpacity(.8), fontSize: 14, fontWeight: FontWeight.w500), maxLines: 3, overflow: TextOverflow.fade)),
                          const SizedBox(width: 10),
                          Container(width: 60, height: 60, decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), image: const DecorationImage(image: AssetImage("assets/images/me.jpg"), fit: BoxFit.cover))),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          const Icon(FontAwesome.circle_dot_solid, size: 5, color: green),
                          const SizedBox(width: 5),
                          const Text("999+ unread", style: TextStyle(color: green, fontSize: 12, fontWeight: FontWeight.w500)),
                          const SizedBox(width: 5),
                          const Icon(FontAwesome.circle_dot_solid, size: 2, color: green),
                          const SizedBox(width: 5),
                          Text("Just now", style: TextStyle(color: white.withOpacity(.8), fontSize: 12, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (BuildContext context, int index) => Divider(height: .5, thickness: .5, color: white.withOpacity(.5)),
              itemCount: 30,
              padding: EdgeInsets.zero,
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: <Widget>[
                Text("Find Channels", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                Spacer(),
                Text("See all", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: green)),
                SizedBox(width: 5),
                Icon(FontAwesome.chevron_right_solid, color: green, size: 13),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 140,
            child: StatefulBuilder(
              builder: (BuildContext context, void Function(void Function()) _) => ListView.separated(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10),
                itemBuilder: (BuildContext context, int index) => GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), border: Border.all(width: .5, color: white.withOpacity(.5))),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: <Widget>[
                            Container(width: 50, height: 50, decoration: const BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: AssetImage("assets/images/me.jpg"), fit: BoxFit.cover))),
                            Container(padding: const EdgeInsets.all(2), decoration: BoxDecoration(shape: BoxShape.circle, color: green, border: Border.all(color: black)), child: const Icon(FontAwesome.circle_check, size: 13, color: white)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text("Fox News", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white)),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: green.withOpacity(.1)),
                            child: Text("Follow", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: green.withOpacity(.9))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
