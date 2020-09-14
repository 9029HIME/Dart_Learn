void main(){
  ///Dart中可以用??=表示为空则赋值
  int nullA;
  int notNullA = 3;
  nullA??=333;
  notNullA??=333;
  print(nullA);
  print(notNullA);
  //TODO:Dart里没有NPE
  print(nullA.toString());

  ///TODO:for循环和Java基本一样,While也一样
  for(int i=1;i<3;i++){
    print(i);
  }
  int i = 1;
  while(i<3){
    ++i;
  }
}