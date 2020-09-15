///TODO Dart的继承与Java基本一致
class Father{
  String _fatherName;
  String _fatherAge;

  String get fatherName => _fatherName;

  set fatherName(String value) {
    _fatherName = value;
  }

  String get fatherAge => _fatherAge;

  set fatherAge(String value) {
    _fatherAge = value;
  }

  void dodo(){
    print("父亲正在做事情");
  }
}

class Son extends Father{
  String _sonName;
  String _sonAge;

  Son(this._sonName, this._sonAge);

  String get sonName => _sonName;

  set sonName(String value) {
    _sonName = value;
  }

  String get sonAge => _sonAge;

  set sonAge(String value) {
    _sonAge = value;
  }
  @override
  void dodo(){
    print("儿子正在做事情");
  }
}

main(){
  var useFather=(Father father){
    print("使用了父类的方法");
  };

  Father father = new Father();
  Son son = new Son("儿子","13");
  ///TODO:Dart中的继承也能体现多态（Golang就不行了）
  useFather(son);
  Father fatherSon = new Son("我其实是儿子", "23");
  ///此时调用的是子类重写的方法
  fatherSon.dodo();
  ///TODO:Dart中可以用as来断言
  Son fatherToSon = (fatherSon as Son);
  son.dodo();

}
