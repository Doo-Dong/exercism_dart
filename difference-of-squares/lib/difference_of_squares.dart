import 'dart:math';

class DifferenceOfSquares {
  // (1 + 2 + ... + 10)^2
  int squareOfSum(int number) => pow(_squareOfSumBrain(number), 2).toInt();

  // Extract method for clearly dartfmt
  int _squareOfSumBrain(int number) => Iterable<int>.generate(++number)
      .toList()
      .fold<int>(0, (prefix, foldElement) => prefix + foldElement);

  // 1^2 + 2^2 + ... + 10^2
  int sumOfSquares(int number) => Iterable<int>.generate(++number)
      .toList()
      .map((number) => pow(number, 2).toInt())
      .fold<int>(0, (prefix, foldElement) => prefix + foldElement);

  //  squareOfSum - sumOfSquares
  int differenceOfSquares(int number) =>
      squareOfSum(number) - sumOfSquares(number);
}
