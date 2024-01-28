import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
                        children: <Widget>[],
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
