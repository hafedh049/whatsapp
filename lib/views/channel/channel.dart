import 'package:flutter/material.dart';
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
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: green.withOpacity(.05)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), image: const DecorationImage(image: AssetImage("assets/images/me.jpg"), fit: BoxFit.cover)))),
                          const SizedBox(height: 10),
                          StatefulBuilder(
                            builder: (BuildContext context, void Function(void Function()) _) {
                              if (data[index].contains(RegExp(r'(http|https|www)'))) {
                                final List<String> buffer = data[index].split(" ");
                                return RichText(
                                  maxLines: 3,
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      for (final String text in buffer)
                                        TextSpan(
                                          text: text,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: text.startsWith(RegExp(r'(http|https|www)')) ? blue : white,
                                            fontWeight: FontWeight.w500,
                                            decoration: text.startsWith(RegExp(r'(http|https|www)')) ? TextDecoration.underline : TextDecoration.none,
                                          ),
                                        ),
                                    ],
                                  ),
                                );
                              } else {}
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
