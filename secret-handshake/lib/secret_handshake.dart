class SecretHandshake {
  // citReyJoshua's solution
  List<String> commands(int value) {
    List<String> handshakes = [];

    if (value & 1 == 1) handshakes.add('wink');
    if (value & 2 == 2) handshakes.add('double blink');
    if (value & 4 == 4) handshakes.add('close your eyes');
    if (value & 8 == 8) handshakes.add('jump');
    if (value & 16 == 16) handshakes.reversed.toList();

    return handshakes;
  }
}
