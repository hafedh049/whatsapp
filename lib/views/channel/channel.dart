import 'package:flutter/material.dart';

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

  final List<String> data = _generateMessages(30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    child: Container(
                      height: 400,
                      width: MediaQuery.sizeOf(context).width,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), image: const DecorationImage(image: AssetImage("assets/images/me.jpg"), fit: BoxFit.cover)))),
                          const SizedBox(height: 10),
                          StatefulBuilder(
                            builder: (BuildContext context, void Function(void Function()) _) {
                              return Text(data);
                            },
                          ),
                        ],
                      ),
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
