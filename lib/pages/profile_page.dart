import 'dart:async';

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Taccuino Beccacciaio"),
        ),
        body: const ProfileForm());
  }

}

class ProfileForm extends StatefulWidget{
  const ProfileForm({super.key});

  @override
  ProfileFormState createState() {
    return ProfileFormState();
  }
}

class ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child:
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Nome",
                  labelText: "Nome",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Il nome non può essere vuoto';
                  }else if (!RegExp(r"^[a-zA-Z ]+").hasMatch(value)) {
                    return 'Nome non valido';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child:
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Cognome",
                  labelText: "Cognome",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Il cognome non può essere vuoto';
                  }else if (!RegExp(r"^[a-zA-Z ]+").hasMatch(value)) {
                    return 'Cognome non valido';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child:
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  labelText: "Email",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'La mail non può essere vuota';
                  }else if (!RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&/=?^_]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value)) {
                    return 'Email non valida';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            )
          ],
        )
    );
  }
}
