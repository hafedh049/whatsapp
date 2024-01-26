import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:whatsapp/utils/shared.dart';

class EmailAddress extends StatefulWidget {
  const EmailAddress({super.key});

  @override
  State<EmailAddress> createState() => _EmailAddressState();
}

class _EmailAddressState extends State<EmailAddress> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<State> _buttonKey = GlobalKey<State>();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
          title: const Text("E-mail address", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(child: Text("Add your E-mail", style: TextStyle(color: white, fontSize: 18, fontWeight: FontWeight.w500))),
              const SizedBox(height: 20),
              Text("E-mail helps you access your account. It isn't visible to others.", style: TextStyle(color: white.withOpacity(.6), fontSize: 14, fontWeight: FontWeight.w500)),
              TextField(
                autofocus: true,
                controller: _emailController,
                onChanged: (String value) {
                  if (_emailController.text.trim().length <= 1) {
                    _buttonKey.currentState!.setState(() {});
                  }
                },
                style: TextStyle(color: white.withOpacity(.6), fontSize: 16, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  hintText: "E-mail",
                  hintStyle: TextStyle(color: white.withOpacity(.6), fontSize: 16, fontWeight: FontWeight.w500),
                  focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: green)),
                ),
              ),
              const SizedBox(height: 20),
              Text("We'll send a verification code to this E-mail address.", style: TextStyle(color: white.withOpacity(.6), fontSize: 14, fontWeight: FontWeight.w500)),
              const Spacer(),
              StatefulBuilder(
                key: _buttonKey,
                builder: (BuildContext context, void Function(void Function()) _) {
                  return GestureDetector(
                    onTap: () {},
                    child: AnimatedContainer(
                      duration: 500.ms,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      alignment: Alignment.center,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: _emailController.text.trim().isEmpty ? white.withOpacity(.1) : green),
                      child: Text("Create a passkey", style: TextStyle(color: _emailController.text.trim().isEmpty ? white.withOpacity(.6) : black, fontSize: 12, fontWeight: FontWeight.w500)),
                    ),
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
