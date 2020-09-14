void main(){
  //TODO：在Dart中，List可以代表为数组或链表
  ///直接声明
  var list01 = ['111',222,true];
  list01[1] = '更改后';
  print(list01[1]);
  
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

  //TODO:在Dart中，可以用Set代表不可重复集合
  Set s = new Set();


  ///TODO:集合的常用API
  var str = list01.join("-");
  print(str);
  List returned = str.split("-");
  ///有点像lambada
  list01.forEach((element) {
    print(element);
  });
  ///用来修改集合内的数据
  list01.map((e){
    return "aaa";
  });
  ///过滤数据，返回新集合
  list01.where((element){
    return element==5;
  });


  ///TODO:Set的常用API
  ///添加后自动去重
  s.addAll(list01);

  ///TODO:Dart中的增强for
  for(var item in s){

  }

}