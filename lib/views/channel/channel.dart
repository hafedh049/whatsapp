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
                itemBuilder: (BuildContext context, int index) => Center(
                  child: GestureDetector(
                    onTap: () {},
                    onDoubleTap: () {},
                    onLongPress: () {},
                    child: Container(
                      height: 400,
                      width: MediaQuery.sizeOf(context).width,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), image: const DecorationImage(image: AssetImage("assets/images/me.jpg"), fit: BoxFit.cover)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
