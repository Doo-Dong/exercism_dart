class ResistorColorDuo {
  List<String> colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];

  String colorCodes;

  int value(List<String> list) {
    for(int i = 0; i < list.length; i++) {
      colorCodes += colors.indexOf(list[i]).toString();
    }
    return int.parse(colorCodes);
  }
}