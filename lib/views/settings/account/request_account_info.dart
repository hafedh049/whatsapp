import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/shared.dart';

class RequestAccountInfo extends StatelessWidget {
  const RequestAccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Request account info", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Account information", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: white.withOpacity(.6))),
            const SizedBox(height: 20),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(item["title"], style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: white)),
                      const SizedBox(height: 5),
                      Text(item["subtitle"], style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: white.withOpacity(.6))),
                    ],
                  ),
                ),
                if (item["type"] != 1) const SizedBox(width: 10),
                item["type"] == 3
                    ? Text(item["state"], style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: white.withOpacity(.6)))
                    : item["type"] == 2
                        ? StatefulBuilder(
                            builder: (BuildContext context, void Function(void Function()) _) {
                              return Switch(
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                value: item["radio_state"],
                                activeColor: green,
                                activeTrackColor: white.withOpacity(.1),
                                inactiveThumbColor: white.withOpacity(.6),
                                onChanged: (bool value) => _(() => item["radio_state"] = value),
                              );
                            },
                          )
                        : const SizedBox(),
              ],
            ),
            const SizedBox(height: 20),
            Divider(height: .5, thickness: .5, color: white.withOpacity(.6)),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
