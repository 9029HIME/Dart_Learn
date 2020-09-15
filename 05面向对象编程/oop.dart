///TODO:Dart是一门单继承OOP语言，和Java一样所有类都继承自Object


class Person {
  static String staticName = "初始化类属性";
  String name;
  int age;
  ///TODO:左边下划线表示私有属性，Dart中只有在其他文件访问才能体现私有，本文件访问仍是公有
  String _privateName;

  ///TODO:对象实例化前先赋值，类似Java的代码块
  Person():age=20{
    print("Person类被实例化了");
  }

//  Person(String name,int age){
//    this.name=name;
//    this.age = age;
//  }
//  也可以这样写
//  Person(this.name,this.age){
//}
  static void showName(){
    print("Person类的静态Name：$staticName");
  }

  ///TODO 不过Dart貌似没有方法重载,除非用匿名构造函数
  Person.cons1(String name,int age ){
    this.name=name;
    this.age = age;
  }

  String getName(){
    return this.name;
  }
  ///Dart的方法没有权限修饰符
  void setName(String name){
    this.name = name;
  }
}

main(){
  Person p = new Person();
  print(p.getName());
  Person p2 = new Person.cons1("匿名", 18);
  print(p2.name);
  Person.showName();
  ///TODO 可选链,如果p3为空，该行代码不执行
  Person p3;
  p3?.getName();
}