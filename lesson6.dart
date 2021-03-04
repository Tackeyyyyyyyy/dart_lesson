int testFunction2() {
  const y = 1000;
  print(y);
  return y;
}

main() {
  const x = 10;
  int testFunction() {
    const y = 20;
    print('$x, $y'); // 関数の外で定義されているxは参照できる
    return x + y;
  }

  var result = testFunction();
  print('$result');

  print(testFunction2());

  void enableFlags({bool? hidden, bool? bold}) {
    print('$bold $hidden');
  }
  enableFlags(hidden: true, bold: true);
  // boldはnull
  enableFlags(hidden: true);
}
