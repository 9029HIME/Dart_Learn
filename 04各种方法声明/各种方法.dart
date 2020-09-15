void main(){
  ///TODO 匿名方法,生命在方法体内，属于方法里的方法
  var noName=(int i){
    print("我是匿名方法$i");
  };
  noName(2);

  ///TODO 自执行方法,运行文件后自动调用，有点类似Java的static代码块
  ((){
    print("我是自执行方法，运行文件后自动调用");
  })();

  ///TODO 闭包方法，返回一个匿名方法，有点类似Golang的闭包
  closeP(){
    var p = "P";
    ///用来生命返回匿名函数
    return(){
      p = p+p;
      print("调用了一次闭包方法$p");
    };
  }
  ///接收闭包返回的方法
  var packet = closeP();
  var two = closeP();
  ///调用闭包返回的方法
  packet();
  packet();
  ///闭包方法每次返回的匿名方法里的局部变量不共用
  two();
}
