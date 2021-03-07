main() {
  // mixin
  var cat = new Cat();
  // Catクラスの実装を呼び出す
  cat.AnimalMethod();
  // Runnableクラスの実装を呼び出す
  cat.run();
}

class Animal {
  Animal() {
    print('Animal');
  }

  void AnimalMethod() {
    print('AnimalMethod');
  }
}

mixin Runnable {
  // mixinはコンストラクタは定義できない
  void run() {
    print('run');
  }
}

// ミックスイン、with句でつないだmixinの実装が使える
// 多重継承に似ているが、コンストラクタが定義できるのはextendsしたクラスのみ
class Cat extends Animal with Runnable {
  Cat() : super() {
    print('Cat');
  }
}
