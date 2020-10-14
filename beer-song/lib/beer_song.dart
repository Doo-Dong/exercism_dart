class BeerSong {
  List<String> recite(int beer, int loopCount) {
    List<String> returnList = [];

    while (loopCount > 0) {
      beer > 0
          ? beer == 1
              ? returnList.add(
                  '$beer bottle of beer on the wall, $beer bottle of beer.')
              : returnList.add(
                  '$beer bottles of beer on the wall, $beer bottles of beer.')
          : returnList.add(
              'No more bottles of beer on the wall, no more bottles of beer.');
      beer -= 1;

      if (beer > 0) {
        beer == 1
            ? returnList.add(
                'Take one down and pass it around, $beer bottle of beer on the wall.')
            : returnList.add(
                'Take one down and pass it around, $beer bottles of beer on the wall.');
      } else if (beer == 0) {
        returnList.add(
            'Take it down and pass it around, no more bottles of beer on the wall.');
      } else {
        returnList.add(
            'Go to the store and buy some more, 99 bottles of beer on the wall.');
      }

      loopCount -= 1;
      loopCount > 0 ? returnList.add('') : print('loop end');
    }

    return returnList;
  }
}
