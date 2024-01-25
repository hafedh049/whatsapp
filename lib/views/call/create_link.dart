import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../utils/shared.dart';

class CreateLink extends StatefulWidget {
  const CreateLink({super.key});

  @override
  State<CreateLink> createState() => _CreateLinkState();
}

class _CreateLinkState extends State<CreateLink> {
  final GlobalKey<State> _linkKey = GlobalKey<State>();

  String _callType = "Video";
  String _link = "";

  Future<String> _generateLink() async {
    final List<String> tokens = <String>[];
    for (int index = 'a'.codeUnitAt(0); index <= 'z'.codeUnitAt(0); index++) {
      tokens.add(String.fromCharCode(index));
    }

    for (int index = 'A'.codeUnitAt(0); index <= 'Z'.codeUnitAt(0); index++) {
      tokens.add(String.fromCharCode(index));
    }

    for (int index = '0'.codeUnitAt(0); index <= '9'.codeUnitAt(0); index++) {
      tokens.add(String.fromCharCode(index));
    }
    await Future.delayed(1.seconds);
    return "https://call.whatsapp.com/${_callType.toLowerCase()}/${List<String>.generate(22, (int index) => tokens[Random().nextInt(tokens.length)]).join()}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Create call link", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text("Anyone with Whatsapp can use this link to join this call. Only share it with people you trust.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: <Widget>[
                  const CircleAvatar(radius: 20, backgroundColor: green, child: Icon(FontAwesome.video_solid, size: 15, color: white)),
                  const SizedBox(width: 10),
                  Expanded(
                    child: StatefulBuilder(
                      key: _linkKey,
                      builder: (BuildContext context, void Function(void Function()) _) {
                        return FutureBuilder<String>(
                          future: _generateLink(),
                          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                            if (snapshot.hasData) {
                              _link = snapshot.data!;
                              return Text(_link, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: blue), maxLines: 2);
                            } else {
                              return const Text("Creating link ...", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: blue), maxLines: 2);
                            }
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    content: SizedBox(
                      width: MediaQuery.sizeOf(context).width * .8,
                      child: StatefulBuilder(
                        builder: (BuildContext context, void Function(void Function()) _) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text("Select call type", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: white)),
                              const SizedBox(height: 20),
                              RadioListTile(
                                value: "Video",
                                groupValue: _callType,
                                onChanged: (String? value) {
                                  _(() => _callType = value!);
                                  _linkKey.currentState!.setState(() {});
                                },
                                activeColor: green,
                                title: Text("Video", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                              ),
                              const SizedBox(height: 20),
                              RadioListTile(
                                value: "Voice",
                                groupValue: _callType,
                                onChanged: (String? value) {
                                  _(() => _callType = value!);
                                  _linkKey.currentState!.setState(() {});
                                },
                                activeColor: green,
                                title: Text("Voice", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text("Call type", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white)),
                  const SizedBox(height: 10),
                  Text(_callType, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                ],
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: <Widget>[
                  Icon(FontAwesome.arrow_right_solid, size: 15, color: white.withOpacity(.8)),
                  const SizedBox(width: 10),
                  const Text("Send link via whatsapp", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white)),
                ],
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: <Widget>[
                  Icon(FontAwesome.clipboard_solid, size: 15, color: white.withOpacity(.8)),
                  const SizedBox(width: 10),
                  const Text("Copy link", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white)),
                ],
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: <Widget>[
                  Icon(Bootstrap.share_fill, size: 15, color: white.withOpacity(.8)),
                  const SizedBox(width: 10),
                  const Text("Share link", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
