import 'package:test/test.dart';

void main() {
  group('Stringのテスト', () {
    test('String.split()のテスト', () {
      var string = 'ラーメン,つけ麺,僕イケメン';
      expect(string.split(','), equals(['ラーメン', 'つけ麺', '僕イケメン']));
    });

    test('String.trim()のテスト', () {
      var string = '  ほげ ';
      expect(string.trim(), equals('ほげ'));
    });
  });
}
