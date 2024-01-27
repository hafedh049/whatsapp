import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:whatsapp/utils/shared.dart';
import 'package:whatsapp/views/miscellaneous/wait.dart';
import 'package:whatsapp/views/miscellaneous/wrong.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  String _language = "English";
  Future<List<Map<String, String>>> _load() async => json.decode(await rootBundle.loadString("assets/jsons/languages.json")).cast<Map<String, String>>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 40,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesome.x_solid, size: 15, color: white.withOpacity(.6)),
                ),
              ),
              const Text("App language", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white)),
            ],
          ),
          const SizedBox(height: 20),
          Divider(thickness: .3, height: .3, color: white.withOpacity(.6)),
          const SizedBox(height: 20),
          FutureBuilder<List<Map<String, String>>>(
            future: _load(),
            builder: (BuildContext context, AsyncSnapshot<List<Map<String, String>>> snapshot) {
              if (snapshot.hasData) {
                final List<Map<String, String>> data = snapshot.data!;
                return StatefulBuilder(
                  builder: (BuildContext context, void Function(void Function()) _) {
                    return ListView.separated(
                      itemBuilder: (BuildContext context, int index) => Row(
                        children: <Widget>[
                          SizedBox(
                            width: 40,
                            child: Radio<String>(
                              value: data[index]["name"]!,
                              groupValue: _language,
                              onChanged: (String? value) => _(() => _language = value!),
                            ),
                          ),
                        ],
                      ),
                      separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
                      itemCount: 30,
                    );
                  },
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Wait();
              } else {
                return Wrong(error: snapshot.error.toString());
              }
            },
          ),
        ],
      ),
    );
  }
}
