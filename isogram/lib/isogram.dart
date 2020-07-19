class Isogram {
  bool isIsogram(String string) =>
      removeRedundancy(dataPreprocess(string)) == dataPreprocess(string);

  String dataPreprocess(String string) =>
      string.replaceAll(' ', '').replaceAll('-', '').toUpperCase();

  String removeRedundancy(String string) =>
      string.split('').toSet().toList().join('');
}