import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localizationapp/Data/Repository/language.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: DropdownButton(
                underline: const SizedBox(),
                icon: const Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                items: Language.languageList()
                    .map<DropdownMenuItem<Language>>(
                        (e) => DropdownMenuItem<Language>(
                            value: e,
                            child: Row(
                              children: [
                                Text(
                                  e.flag,
                                  style: const TextStyle(fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(e.name)
                              ],
                            )))
                    .toList(),
                onChanged: (Language? language) {}),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text("Email"),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Enter Email", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("Password"),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Enter Password", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: CupertinoButton(
                  color: Colors.blueAccent,
                  child: const Text("Login"),
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
