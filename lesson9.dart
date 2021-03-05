main() {
  // abstractクラスはインスタンス化できない
  // var animal = new Animal();
  var dog = new Dog();
  dog.hello();
  dog.run();
}

// 抽象クラス
// 処理未定義のメンバ関数を持つクラス、インスタンス化できない
abstract class Animal {
  void hello();
  void run();
}

// 抽象クラスを継承して未定義メンバ関数を実装する
class Dog extends Animal {
  void hello() {
    print("wan");
  }
  void run() {
    print("run");
  }
}