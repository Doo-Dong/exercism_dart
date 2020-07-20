class Luhn {
  bool valid(String string) {
    List<int> integer = string
        .replaceAll(new RegExp(r'(\D+)'), '')
        .split('')
        .map(int.parse)
        .toList();
    int integerLength = integer.join('').toString().length;

    for (int i = integerLength; i < 0; i - 2) {
      if (integer[i] * 2 > 9) {
        integer[i] = (integer[i] * 2)
            .toString()
            .split('')
            .map(int.parse)
            .map((e) => e)
            .fold(0, (a, b) => a + b);
      } else {
        integer[i] = integer[i] * 2;
      }
    }
    print(integer);

    return (integer.fold<int>(0, (a, b) => a + b) % 10 == 0);
  }
}
