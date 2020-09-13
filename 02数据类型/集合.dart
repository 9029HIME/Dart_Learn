void main(){
  //TODO：在Dart中，List可以代表为数组或链表
  ///直接声明
  var list01 = ['111',222,true];
  print(list01);
  
  ///new声明 
  var list02 = new List();
  list02.add("张三");list02.add("李四");
  print(list02);

  ///泛型声明
  var list03 = new List<int>();
  list03.add(3);
  list03.add(4);
  print(list03);

  //TODO:在Dart中，可以用Map代表为映射
  ///直接声明
  var map01 = {
    "name":"张三",
    "age":18
  };
  //直接打印出json文本
  print(map01);
  //通过Maps['key']获取值
  print(map01['name']);

  ///new声明，可以指定泛型
  var map02 = new Map<String,String>();
  map02['name'] = "李四";
  map02['age'] = "20";
  print(map02);
}