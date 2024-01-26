import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../utils/shared.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
          title: const Text("Delete this account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Icon(FontAwesome.triangle_exclamation_solid, color: Colors.red, size: 15),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text("If you delete this account :", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.red)),
                        const SizedBox(height: 20),
                        Text("◉ This account will be deleted from WhatsApp and all your devices.", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                        const SizedBox(height: 5),
                        Text("◉ Your message history will be erased.", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                        const SizedBox(height: 5),
                        Text("◉ You will be removed from all whatsaApp groups", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                        const SizedBox(height: 5),
                        Text("◉ Any channels you created will be deleted.", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(FontAwesome.door_open_solid, color: white.withOpacity(.6), size: 15),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text("Change number instead ?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white)),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: green),
                            child: const Text("Change number", style: TextStyle(color: black, fontSize: 12, fontWeight: FontWeight.w500)),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text("To delete your account, confirm your country code and enter your phone number..", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white.withOpacity(.6))),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Country", style: TextStyle(color: white.withOpacity(.6), fontSize: 10, fontWeight: FontWeight.w500)),
                            const SizedBox(height: 5),
                            const Text("Tunisia", style: TextStyle(color: white, fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Phone", style: TextStyle(color: white.withOpacity(.6), fontSize: 10, fontWeight: FontWeight.w500)),
                            const SizedBox(height: 5),
                            InternationalPhoneNumberInput(
                              hintText: "Phone number",
                              onInputChanged: (PhoneNumber value) {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.red),
                            child: const Text("Delete Account", style: TextStyle(color: black, fontSize: 12, fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
