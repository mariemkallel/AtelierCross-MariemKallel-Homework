import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  //var
  GlobalKey<FormState> formKey = GlobalKey();

  late String username;

  late String mail;

  late String password;

  late String naissance;

  late String address;

  //build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Image.asset("Assets/minecraft.jpg",
                    width: 460, height: 215)),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                onSaved: (newValue) {
                  password = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Mot de passe Actuel"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                onSaved: (newValue) {
                  password = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nouveau Mot de passe"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: TextFormField(
                onSaved: (newValue) {
                  address = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "address cannot be empty";
                  }
                },
                maxLines: 4,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Adresse de facturation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                  backgroundColor: Colors.blue,
                ),
                child: const Text("Enregistrer"),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
