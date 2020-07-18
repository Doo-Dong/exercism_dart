import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) => _armstrong(number) == number;

  num _armstrong(int number) => '$number'
      .split('')
      .map(int.parse)
      .map((e) => pow(e, '$number'.length))
      .fold(0, (prefix, foldElement) => prefix + foldElement);
}
