void main() {
  // for
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }

  // forEach
  var lists = ['11111', '22222', '33333'];
  lists.forEach((value) {
    print(value);
  });

  var sets = {'s', 'e', 't'};
  sets.forEach((value) {
    print(value);
  });

  var maps = {'k': 'm', 'e': 'a', 'y': 'p'};
  maps.forEach((key, value) {
    print('$key $value');
  });

  print(lists.first);
  print(lists.join(","));
}
