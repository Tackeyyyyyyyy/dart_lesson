class Person {
  String firstName;
  String lastName;

  // 静的メンバ変数
  static const salary = 16;

  Person(String s, String t) {
    this.firstName = s;
    this.lastName = t;
  }

  greed() {
    print('Hello ${firstName} ${lastName}');
  }

  // 静的メンバ関数
  static void staticMethod() {
    print('Hello');
  }
}

class Engineer extends Person {
  final String name;

  // 親クラスのコンストラクタを呼ぶには初期化子（:）でsuperを使う
  // メンバ変数の初期化も初期化子内で行える
  Engineer(String firstName, String lastName)
      : name = '',
        super(firstName, lastName);

  // メソッドの上書き
  // @overrideは任意（けど書いたほうがわかりやすい）
  @override
  greed() {
    // super.greed(); // メンバ関数内でコンストラクタ以外の親クラスのメンバ関数はsuper.メンバ関数名で呼び出しできる
    print('I am ${firstName}${lastName}');
  }
}

class Dog {
  var name;

  Dog() {
    this.name = 'Anonymous';
  }
}

main() {
  // インスタンス生成
  var dog = new Dog();
  print(dog.name); // Anonymous

  var person1 = new Person('hikari', 'homura');
  print('${person1.firstName} ${person1.lastName}');
  person1.greed();
  // static メソッド
  Person.staticMethod();
  print(Person.salary);

  var engineer1 = new Engineer('エン', 'ジニア');
  engineer1.greed();
}
