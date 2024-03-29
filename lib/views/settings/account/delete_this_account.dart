import 'dart:async';
import 'dart:convert';

import 'package:flag/flag.dart' as flag;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:whatsapp/views/miscellaneous/wait.dart';
import 'package:whatsapp/views/miscellaneous/wrong.dart';

import '../../../utils/shared.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  final TextEditingController _countryCodeController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _filterController = TextEditingController();

  final GlobalKey<State> _filterKey = GlobalKey<State>();
  final GlobalKey<State> _countryKey = GlobalKey<State>();
  final GlobalKey<State> _phoneCodeKey = GlobalKey<State>();

  String _country = "Tunisia";
  String _phoneCode = "216";

  Future<List<Map<String, dynamic>>> _load() async => json.decode(await rootBundle.loadString("assets/jsons/countries.json")).cast<Map<String, dynamic>>();

  @override
  void dispose() {
    _countryCodeController.dispose();
    _phoneNumberController.dispose();
    _filterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  showDragHandle: true,
                                  builder: (BuildContext context) => GestureDetector(
                                    onTap: () => FocusScope.of(context).unfocus(),
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      height: MediaQuery.sizeOf(context).width,
                                      child: FutureBuilder<List<Map<String, dynamic>>>(
                                        future: _load(),
                                        builder: (BuildContext context, AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                                          if (snapshot.hasData) {
                                            final List<Map<String, dynamic>> realData = snapshot.data!;
                                            return Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                TextField(
                                                  controller: _filterController,
                                                  onChanged: (String value) => _filterKey.currentState!.setState(() {}),
                                                  style: TextStyle(color: white.withOpacity(.6), fontSize: 16, fontWeight: FontWeight.w500),
                                                  decoration: InputDecoration(
                                                    hintText: "Choose a country",
                                                    hintStyle: TextStyle(color: white.withOpacity(.6), fontSize: 16, fontWeight: FontWeight.w500),
                                                    focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: green)),
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Expanded(
                                                  child: StatefulBuilder(
                                                    key: _filterKey,
                                                    builder: (BuildContext context, void Function(void Function()) _) {
                                                      final List<Map<String, dynamic>> filteredData = realData
                                                          .where(
                                                            (Map<String, dynamic> element) =>
                                                                element["english_name"].toLowerCase().contains(
                                                                      _filterController.text.trim().toLowerCase(),
                                                                    ) ||
                                                                element["arabic_name"].toLowerCase().contains(
                                                                      _filterController.text.trim().toLowerCase(),
                                                                    ) ||
                                                                element["country_code"].toLowerCase().contains(
                                                                      _filterController.text.trim().toLowerCase(),
                                                                    ) ||
                                                                element["phone_code"].toLowerCase().contains(
                                                                      _filterController.text.trim().toLowerCase(),
                                                                    ),
                                                          )
                                                          .toList();
                                                      return ListView.builder(
                                                        itemBuilder: (BuildContext context, int index) => ListTile(
                                                          onTap: () {
                                                            _countryKey.currentState!.setState(() => _country = filteredData[index]["english_name"]);
                                                            _phoneCodeKey.currentState!.setState(() => _phoneCode = filteredData[index]["phone_code"]);
                                                            Navigator.pop(context);
                                                          },
                                                          leading: flag.Flag.fromString(filteredData[index]["country_code"], width: 20, height: 20),
                                                          title: Text(filteredData[index]["english_name"], style: const TextStyle(color: white, fontSize: 12, fontWeight: FontWeight.w500)),
                                                          subtitle: Text(filteredData[index]["arabic_name"], style: TextStyle(color: white.withOpacity(.6), fontSize: 10, fontWeight: FontWeight.w500)),
                                                          trailing: Text("+${filteredData[index]["phone_code"]}", style: TextStyle(color: white.withOpacity(.6), fontSize: 12, fontWeight: FontWeight.w500)),
                                                        ),
                                                        itemCount: filteredData.length,
                                                        padding: EdgeInsets.zero,
                                                      );
                                                    },
                                                  ),
                                                )
                                              ],
                                            );
                                          } else if (snapshot.connectionState == ConnectionState.waiting) {
                                            return const Wait();
                                          } else {
                                            return Wrong(error: snapshot.error.toString());
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ).then((void value) => _filterController.clear());
                              },
                              child: StatefulBuilder(
                                key: _countryKey,
                                builder: (BuildContext context, void Function(void Function()) _) {
                                  return Text(_country, style: const TextStyle(color: white, fontSize: 14, fontWeight: FontWeight.w500));
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Phone", style: TextStyle(color: white.withOpacity(.6), fontSize: 10, fontWeight: FontWeight.w500)),
                            const SizedBox(height: 5),
                            StatefulBuilder(
                              key: _phoneCodeKey,
                              builder: (BuildContext context, void Function(void Function()) _) {
                                return Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 60,
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          hintText: "+ $_phoneCode",
                                          hintStyle: TextStyle(color: white.withOpacity(.6), fontSize: 16, fontWeight: FontWeight.w500),
                                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: green)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: InternationalPhoneNumberInput(
                                        showSelector: false,
                                        onInputChanged: null,
                                        initialValue: PhoneNumber(dialCode: _phoneCode),
                                        textFieldController: _phoneNumberController,
                                        inputBorder: const UnderlineInputBorder(borderSide: BorderSide(color: green)),
                                        hintText: "Phone number",
                                        selectorButtonOnErrorPadding: 0,
                                        errorMessage: "",
                                        cursorColor: green,
                                        textStyle: TextStyle(color: white.withOpacity(.6), fontSize: 16, fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                );
                              },
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
