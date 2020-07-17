class CollatzConjecture {
  int _steps = 0;

  int steps(double n) {
    if (n == 1) {
      return 0;
    }

    while(n == 1) {
      if(n / 2 == 0) {
        n = n / 2;
        _steps++;
      } else {
        n = (3 * n) + 1;
        _steps++;
      }
    }
    return _steps;
  }
}
