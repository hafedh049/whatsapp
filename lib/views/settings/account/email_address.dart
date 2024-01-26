import 'package:flutter/material.dart';
import 'package:whatsapp/utils/shared.dart';

class EmailAddress extends StatefulWidget {
  const EmailAddress({super.key});

  @override
  State<EmailAddress> createState() => _EmailAddressState();
}

class _EmailAddressState extends State<EmailAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Passkeys", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text("Add your E-mail", style: TextStyle(color: white, fontSize: 18, fontWeight: FontWeight.w500)),
            const SizedBox(height: 20),
            Text("E-mail helps you access your account. It isn't visible to others.", style: TextStyle(color: white.withOpacity(.6), fontSize: 14, fontWeight: FontWeight.w500)),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            const Text("Add your E-mail", style: TextStyle(color: white, fontSize: 18, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
