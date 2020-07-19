import 'package:luhn/luhn.dart';
import 'package:test/test.dart';

void main() {
  final luhn = new Luhn();

  group('Luhn', () {
    test("single digit strings can not be valid", () {
      final bool result = luhn.valid("1");
      expect(result, equals(false));
    }, skip: false);

    test("a single zero is invalid", () {
      final bool result = luhn.valid("0");
      expect(result, equals(false));
    }, );

    test("a simple valid SIN that remains valid if reversed", () {
      final bool result = luhn.valid("059");
      expect(result, equals(true));
    }, );

    test("a simple valid SIN that becomes invalid if reversed", () {
      final bool result = luhn.valid("59");
      expect(result, equals(true));
    }, );

    test("a valid Canadian SIN", () {
      final bool result = luhn.valid("055 444 285");
      expect(result, equals(true));
    }, );

    test("invalid Canadian SIN", () {
      final bool result = luhn.valid("055 444 286");
      expect(result, equals(false));
    }, );

    test("invalid credit card", () {
      final bool result = luhn.valid("8273 1232 7352 0569");
      expect(result, equals(false));
    }, );

    test("valid number with an even number of digits", () {
      final bool result = luhn.valid("095 245 88");
      expect(result, equals(true));
    }, );

    test("valid strings with a non-digit added at the end become invalid", () {
      final bool result = luhn.valid("059a");
      expect(result, equals(false));
    }, );

    test("valid strings with punctuation included become invalid", () {
      final bool result = luhn.valid("055-444-285");
      expect(result, equals(false));
    }, );

    test("valid strings with symbols included become invalid", () {
      final bool result = luhn.valid("055£ 444\$ 285");
      expect(result, equals(false));
    }, );

    test("single zero with space is invalid", () {
      final bool result = luhn.valid(" 0");
      expect(result, equals(false));
    }, );

    test("more than a single zero is valid", () {
      final bool result = luhn.valid("0000 0");
      expect(result, equals(true));
    }, );

    test("input digit 9 is correctly converted to output digit 9", () {
      final bool result = luhn.valid("091");
      expect(result, equals(true));
    }, );

    test("using ascii value for non-doubled non-digit isn't allowed", () {
      final bool result = luhn.valid("055b 444 285");
      expect(result, equals(false));
    }, );

    test("using ascii value for doubled non-digit isn't allowed", () {
      final bool result = luhn.valid(":9");
      expect(result, equals(false));
    }, );
  });
}
