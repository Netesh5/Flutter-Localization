import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localizationapp/Data/Repository/language.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localizationapp/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.login),
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
                onChanged: (Language? language) {
                  if (language != null) {
                    MyApp.setLocale(context, Locale(language.languageCode));
                  }
                }),
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
            Text(AppLocalizations.of(context)!.email),
            TextFormField(
              decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.enterEmail,
                  border: const OutlineInputBorder()),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(AppLocalizations.of(context)!.password),
            TextFormField(
              decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.enterPassword,
                  border: const OutlineInputBorder()),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: CupertinoButton(
                  color: Colors.blueAccent,
                  child: Text(AppLocalizations.of(context)!.login),
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
