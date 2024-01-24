import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Wait extends StatelessWidget {
  const Wait({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(body: Padding(padding: const EdgeInsets.all(24), child: Center(child: LottieBuilder.asset("assets/lotties/loading.json", reverse: true))));
}
