class NthPrime {
  var list = new List<int>.generate(999999, (i) => i+1);
  var Sieve = new List<int>.generate(10001, (i) => i+1);
  bool flag = true;

  int prime(int number) {
    if (flag) {
      makeSieve();

      list.removeWhere((e) => e == 0 || e == 1);
      Sieve.forEach((element) {
        list.removeWhere((e) => e > element && e % element == 0);
      });

      flag = false;
    }

    return list[number-1];
  }

  void makeSieve() {
    Sieve.removeWhere((e) => e == 0 || e == 1);
    Sieve.removeWhere((e) => e > 2 && e % 2 == 0);
    Sieve.removeWhere((e) => e > 3 && e % 3 == 0);
    Sieve.removeWhere((e) => e > 5 && e % 5 == 0);
    Sieve.removeWhere((e) => e > 7 && e % 7 == 0);
    Sieve.removeWhere((e) => e > 11 && e % 11 == 0);
    Sieve.removeWhere((e) => e > 13 && e % 13 == 0);
    Sieve.removeWhere((e) => e > 17 && e % 17 == 0);
    Sieve.removeWhere((e) => e > 19 && e % 19 == 0);
    Sieve.removeWhere((e) => e > 23 && e % 23 == 0);
  }
}