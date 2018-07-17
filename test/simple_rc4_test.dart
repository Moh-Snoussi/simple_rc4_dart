import 'dart:convert';
import 'package:simple_rc4/simple_rc4.dart';
import 'package:test/test.dart';

void main() {
  group('Test RC4', () {
    test('Encode/Decode bytes for UTF8 characters.', () {
      RC4 rc4 = new RC4('zonble');
      String input = '中文';
      var bytes = rc4.encodeBytes(utf8.encode(input));
      rc4 = new RC4('zonble');
      var output = rc4.decodeBytes(bytes);
      expect(input == output, isTrue);
    });

    test('Encode/Decode bytes for ASCII characters.', () {
      RC4 rc4 = new RC4('zonble');
      String input = 'This is interesting';
      var bytes = rc4.encodeBytes(utf8.encode(input));
      rc4 = new RC4('zonble');
      var output = rc4.decodeBytes(bytes);
      expect(input == output, isTrue);
    });

    test('Encode/Decode String for ASCII characters.', () {
      RC4 rc4 = new RC4('zonble');
      String input = '落魄江湖載酒行';
      String base64 = rc4.encodeString(input, true);
      rc4 = new RC4('zonble');
      var output = rc4.decodeString(base64);
      expect(input == output, isTrue);
    });

    test('Encode/Decode String for ASCII characters.', () {
      RC4 rc4 = new RC4('zonble');
      String input = 'This is interesting';
      String base64 = rc4.encodeString(input, true);
      rc4 = new RC4('zonble');
      var output = rc4.decodeString(base64);
      expect(input == output, isTrue);
    });
  });
}
