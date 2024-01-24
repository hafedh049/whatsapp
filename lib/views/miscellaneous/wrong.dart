import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:whatsapp/utils/shared.dart';

class Wrong extends StatelessWidget {
  const Wrong({super.key, required this.error});
  final String error;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Column(
              children: <Widget>[
                LottieBuilder.asset("assets/lotties/loading.json", reverse: true),
                Text(error, style: const TextStyle(color: green, fontSize: 12, fontWeight: FontWeight.w500), textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
      );
}
