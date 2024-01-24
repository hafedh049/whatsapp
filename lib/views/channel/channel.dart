import 'package:flutter/material.dart';
import 'package:selectable_autolink_text/selectable_autolink_text.dart';
import 'package:whatsapp/utils/shared.dart';

class Channel extends StatefulWidget {
  const Channel({super.key});

  @override
  State<Channel> createState() => _ChannelState();
}

class _ChannelState extends State<Channel> {
  List<String> _generateMessages(int count) {
    List<String> messages = [];

    for (int i = 1; i <= count; i++) {
      String message = "Message $i";

      // Add links randomly to some messages
      if (i % 3 == 0) {
        message += " with a link: https://example.com";
      } else if (i % 2 == 0) {
        message += " with a link: www.example.com";
      }

      messages.add(message);
    }

    return messages;
  }

  late final List<String> data;

  @override
  void initState() {
    data = _generateMessages(30);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) => Center(
                  child: GestureDetector(
                    onTap: () {},
                    onDoubleTap: () {},
                    onLongPress: () {},
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        Container(
                          height: 400,
                          width: MediaQuery.sizeOf(context).width,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: blue.withOpacity(.05)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), image: const DecorationImage(image: AssetImage("assets/images/me.jpg"), fit: BoxFit.cover)))),
                              const SizedBox(height: 10),
                              SelectableAutoLinkText(
                                data[index],
                                linkRegExpPattern: r"(www|http|https)[^ ]*",
                                style: const TextStyle(color: white, fontSize: 12, fontWeight: FontWeight.w500),
                                linkStyle: const TextStyle(color: blue, fontSize: 12, fontWeight: FontWeight.bold),
                                highlightedLinkStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: white, backgroundColor: blue),
                                onTransformDisplayLink: AutoLinkUtils.shrinkUrl,
                                onTap: (String url) async {
                                  debugPrint(url);
                                },
                                onLongPress: (String url) {},
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: <Widget>[],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
                itemCount: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
