//stegrams's solution
//https://exercism.io/tracks/dart/exercises/luhn/solutions/27224754983e42c2978c00852ff870d9

class Luhn {
  List<int> trsl = [0, 2, 4, 6, 8, 1, 3, 5, 7, 9];

  MapEntry<int, int> intToLuhn(int idx, int n) =>
      MapEntry(idx, idx.isEven ? n : trsl[n]);

  bool valid(String t) {
    String norma = t.replaceAll(' ', '');
    bool err = norma.length < 2 || norma.contains(RegExp(r"\D"));
    return !err &&
        norma
                    .split('')
                    .reversed
                    .map(int.parse)
                    .toList()
                    .asMap()
                    .map(intToLuhn)
                    .values
                    .reduce((bf, c) => bf + c) %
                10 ==
            0;
  }
}
