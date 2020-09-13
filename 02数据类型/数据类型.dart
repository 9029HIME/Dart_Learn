void main(){
  //TODO 除了var自动推导声明变量外，还有其他数据类型
  ///字符串
  String piece = "字符串类型";
  ///使用三个单/双引号定义多行字符串
  String textArea = ''' 
    字符串很长
    太长了
  ''';
  ///字符串拼接
  print("$piece : $textArea");
  print(piece+textArea);

  //TODO 在Dart中只提供了两种数值类型:int、double
  int age = 18;
  double price = 15000.5;
  print("年龄是：$age，月薪是$price");

  //TODO 在Dart中用bool赋值，类似Golang
  bool yes = true;
  bool no = false;

  //TODO 在Dart中可以用is关键字判断数据类型
  bool result = yes is String;
  print('yes是否为字符串？$result');
}