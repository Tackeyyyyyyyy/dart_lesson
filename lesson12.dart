import 'dart:ffi';

main() {

  // Generics（総称型）とは
  // 利用目的: 特定の型を記載せず総称型を仮置きし、後で決定する
  // メリット: 重複したコードを無くせる。違う型の変数に代入すると、コンパイルエラーで教えてくれる

  var names = <String>[];
  names.addAll(['Seth', 'Kathy', 'Lars']);
  print(names is List<String>); // true

  var box = new Box<String>();
  box.setByKey('Energy', 'Red Bull');

  print('Energy=${box.getByKey('Energy')}');

  List <String> logTypes = <String>[];
  logTypes.add("WARNING");
  logTypes.add("ERROR");
  logTypes.add("INFO");

  //iterating across list
  for (String type in logTypes) {
    print(type);
  }

  Cat cat1 = Cat<String>("momo");
  cat1.sayName();

  Cat cat2 = Cat<int>(122);
  cat2.sayName();
}

class Box<T> {
  Map<String, T> list = <String, T>{};

  T? getByKey(String key) {
    return list[key];
  }

  void setByKey(String key, T value) {
    this.list.addAll(<String, T>{key: value});
  }
}

// ジェネリクスを伴うクラス
class Cat<T> {
  T name;  // Tは後に決定される型
  Cat(this.name);

  void sayName(){
    print(name);
  }
}
