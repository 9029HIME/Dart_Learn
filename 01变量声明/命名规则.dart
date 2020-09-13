///TODO Dart可以自动推导数据类型,属于强类型动态脚本语言。没有像JS那样的鸭子理论
void main(){
  String str = "字符串";
  //使用var可以自动推断类型
  var fakeStr = "自动推导的字符串";
  //TODO 但推断类型后无法更改
  //fakeStr = 123 错误
  var num = 1;
  print(str);
  print(fakeStr);

  ///TODO 常量定义：const、final
  ///const:编译时常量
  ///final：运行时常量，可以表示当前时间，懒加载
  const NORMAL_NAME = "normalName";
  final CHANGE_NAME = "changeName";
  print(NORMAL_NAME);

}
