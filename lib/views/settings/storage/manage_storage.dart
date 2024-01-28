import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:whatsapp/views/miscellaneous/wrong.dart';

import '../../../utils/shared.dart';

class ManageStorage extends StatefulWidget {
  const ManageStorage({super.key});

  @override
  State<ManageStorage> createState() => _ManageStorageState();
}

class _ManageStorageState extends State<ManageStorage> {
  Future<Map<String, dynamic>> _load() async {
    await Future.delayed(3.seconds);
    return <String, dynamic>{};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Manage storage", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FutureBuilder<Map<String, dynamic>>(
                future: _load(),
                builder: (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
                  if (snapshot.hasError) {
                    return Wrong(error: snapshot.error.toString());
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      if (snapshot.connectionState == ConnectionState.waiting) ...<Widget>[
                        const Center(child: CircularProgressIndicator(color: green)),
                        const SizedBox(height: 10),
                      ],
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text("188", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: green)),
                                  SizedBox(width: 5),
                                  Text("MB", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: green)),
                                ],
                              ),
                              Text("Used", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text("46", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                                  const SizedBox(width: 5),
                                  Text("GB", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                                ],
                              ),
                              Text("Free", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: FAProgressBar(
                          animatedDuration: 500.ms,
                          backgroundColor: white.withOpacity(.1),
                          borderRadius: BorderRadius.circular(25),
                          maxValue: 100,
                          progressColor: Colors.amberAccent,
                          size: 16,
                          currentValue: 20,
                          displayText: null,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const CircleAvatar(radius: 5, backgroundColor: green),
                            const SizedBox(width: 5),
                            Text("WhatsApp (188 MB)", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                            const SizedBox(width: 30),
                            const CircleAvatar(radius: 5, backgroundColor: Colors.amberAccent),
                            const SizedBox(width: 5),
                            Text("Other apps (11 GB)", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 30),
              Text("Tools to save space", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
              const SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Icon(FontAwesome.clock_rotate_left_solid, size: 20, color: white.withOpacity(.6)),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text("Turn on disappearing messages", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),
                        const SizedBox(height: 5),
                        Text("Stay in control of future storage needs and build privacy into you chats.", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Text("Chats and channels", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(FontAwesome.magnifying_glass_solid, size: 15, color: white.withOpacity(.6))),
                ],
              ),
              const SizedBox(height: 20),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) => const Row(
                  children: <Widget>[
                    CircleAvatar(radius: 20, backgroundImage: AssetImage("assets/images/me.jpg")),
                    SizedBox(width: 20),
                    Expanded(child: Text("Turn on disappearing messages", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white), overflow: TextOverflow.ellipsis, maxLines: 1)),
                    SizedBox(width: 20),
                    Text("Stay in control of future storage needs and build privacy into you chats.", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                  ],
                ),
                separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
                itemCount: 8,
              ),
              const SizedBox(height: 30),
              Text("8 channels not displayed because they're taking up a small amount of storage.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white.withOpacity(.6)), textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
