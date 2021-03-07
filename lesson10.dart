main() {
  // インスタンスを作成
  var animal = new Animal('dog');
  print(animal.run('tiwawa'));
  // Animalインタフェースを継承したCatクラスのインスタンスを作成
  var cat = new Cat();
  print(cat.run('Munchkin'));
}

// インターフェイスは実装を持たない
// Animalクラスの宣言であり、run()メソッドを持ったAnimalインターフェイスの宣言でもある
class Animal {
  // privateなものはインターフェイスには含まれない
  final _name;

  // コンストラクタもインターフェイスには含まれない
  Animal(this._name);

  String run(String msg) => '${_name} run ${msg}';
}

// implementsでAnimalインターフェイスを実装する
class Cat implements Animal {
  // privateメンバ変数に関してはゲッターの実装をしないと怒られる
  get _name => '';

  // runを実装しないと怒られる
  String run(String msg) => 'run ${msg}';
}
