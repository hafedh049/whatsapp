import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:multi_circular_slider/multi_circular_slider.dart';
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
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                      MultiCircularSlider(
                        size: MediaQuery.of(context).size.width - 24 * 2,
                        progressBarType: MultiCircularSliderType.circular,
                        values: const <double>[.2, .8],
                        colors: const <Color>[Colors.yellow, green],
                        showTotalPercentage: true,
                        label: 'Usage',
                        animationDuration: 500.ms,
                        animationCurve: Curves.easeIn,
                        innerIcon: const Icon(Icons.integration_instructions),
                        innerWidget: Text('96%'),
                        trackColor: white.withOpacity(.3),
                        progressBarWidth: 16,
                        trackWidth: 16,
                        labelTextStyle: TextStyle(fontSize: 10, color: white.withOpacity(.6), fontWeight: FontWeight.w500),
                        percentageTextStyle: TextStyle(),
                      )
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
