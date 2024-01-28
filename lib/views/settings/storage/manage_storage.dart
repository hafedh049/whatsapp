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
                              const SizedBox(height: 5),
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
                              const SizedBox(height: 5),
                              Text("Free", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: FAProgressBar(
                          animatedDuration: 500.ms,
                          backgroundColor: white.withOpacity(.3),
                          borderRadius: BorderRadius.circular(25),
                          maxValue: 100,
                          progressColor: Colors.amberAccent,
                          size: 16,
                          currentValue: 20,
                          displayText: null,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
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
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
