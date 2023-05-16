// ignore_for_file: public_member_api_docs, sort_constructors_first
class Language {
  int id;
  String flag;
  String name;
  String languageCode;
  Language({
    required this.id,
    required this.flag,
    required this.name,
    required this.languageCode,
  });

  static List<Language> languageList() {
    return <Language>[
      Language(id: 1, flag: "🇳🇵", name: "नेपाली", languageCode: "no"),
      Language(id: 2, flag: "🇺🇸", name: "English", languageCode: "en"),
      Language(id: 3, flag: "🇮🇳", name: "हिन्दी", languageCode: "hi"),
      Language(id: 4, flag: "🇯🇵", name: "日本", languageCode: "ja")
    ];
  }
}
