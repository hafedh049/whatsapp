import 'package:flutter/material.dart';

class Channel extends StatefulWidget {
  const Channel({super.key});

  @override
  State<Channel> createState() => _ChannelState();
}

class _ChannelState extends State<Channel> {
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
                itemBuilder: (BuildContext context, int index) => Container(),
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
