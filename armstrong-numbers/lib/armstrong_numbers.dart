import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    int prefix = 0;
    int amount = '$number'.length;

    prefix = '$number'.split('').fold<int>(
        0,
        (prefix, foldElement) =>
            prefix + pow(int.parse(foldElement), amount).toInt());

    return number == prefix;
  }
}
