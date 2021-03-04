void main() {
  // while
  var i = 1;
  while(true) {
    // if文
    if (i == 10) {
      break;
    } else if (i == 6) {
      i++;
      print('iは$i');
    } else {
      i++;
      print('i=$i');
    }
  }

  // do-while
  var t = 1;
  do {
    t++;
    print('t=$t');
  } while (i < 3);

  // switch
  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED':
      print('CLOSED');
      continue nowClosed; // continueの場合、nowClosedラベルを実行する
    nowClosed:
    case 'NOW_CLOSED':
      print('NOW_CLOSED');
      break;
  }
}
