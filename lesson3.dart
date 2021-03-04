void main() {
  // どんな型でもok
  dynamic j = 10;
  j = 'a'; // dynamicだと途中で別の型のデータも格納できる
  print(j);

  // キャスト
  print(int.parse('42') == 42); // String => int
  print(double.parse('42.3') == 42.3); // String => double
  print(42.31.toString() == '42.31'); // number => String

  // 定数
  final k = 'aaaaa';
  // k = 212; // 再代入しようとするとエラー
  const l = 112; // 定数、再代入はエラーになる(コンパイル時に埋め込まれる)
  // l = 2;
  List m = const [23, 231, 23132];
  // m.add(10); // 変更はできない
  print('$k, $l, $m');
}
