main() {
  void errorFunc() {
    try {
      throw FormatException('例外です');
    } on FormatException catch(e) {
      print(e.message);
      // rethrowでtry-catch-finallyブロックの外に例外を投げ直す事ができる（関数の外などでcatchする必要あり）
      rethrow;
    } finally {
      // finallyブロックは例外の有無にかかわらず実行される、省略可。
      print('finally');
    }
  }

  // 例外処理：try-catch文
  try {
    errorFunc();
  } catch (e, s) {
    // 型を指定しないcatchは、何型かわからない例外全部キャッチする
    // catchに仮引数を２つ指定すると、２つ目はStackTraceオブジェクトが入る
    print(e.toString());
    print(s);
  }
}