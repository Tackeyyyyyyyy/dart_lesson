main() {
  // 基本的なデータ
  int b = 1012;
  double c = 12.3;
  String d = 'abc';
  bool e = true;

  print('$b, $c, $d, $e');

  // 配列
  List f = [1, 2, 3, 4];
  print(f);
  f.add(5);  // 末尾追加
  print(f);
  f.add(5);
  print(f);

  // 重複を許さない配列
  Set g = {'a', 'b', 'c'};
  print(g);
  g.add('d');
  print(g);
  g.add('d');  // 重複して入ることはない
  print(g);
}
