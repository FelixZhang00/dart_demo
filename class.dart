/**
 * 类
 * 类的定义及初始化
 * 命名构造函数
 * 初始化列表
 * 继承父类和接口实现
 * mixin
 */

class Point {
  num x;
  num y;
  String name;
  static num sValue;
  //类似c++的初始化列表
  Point(this.x, this.y):name="";
  Point.bottom(num x):this(x,0);//重定向构造函数


  printInfo() => print("x=$x,y=$y,name=$name");
  static printStatic() => print("static value=$sValue");
}

//继承
class Vector extends Point{
  num z=0;
  Vector(num x, num y,this.z) : super(x, y);

  @override
  void printInfo() => print('(x=$x,y=$y,z=$z)');
}

//接口实现
class Coordinate implements Point{

  Coordinate(this.x, this.y):name="";

  @override
  String name;

  @override
  num x;

  @override
  num y;

  @override
  printInfo() {
    print("Coordinate:x=$x,y=$y");
    return null;
  }

}

class RunMan{

  void run() => print('run..');
}

class FlyMan{

  void fly() => print('fly..');
}

class SuperMan with RunMan,FlyMan{

}

main() {
  Point p = Point(1, 2);
  p.printInfo();
  Point.printStatic();

  Point.sValue = 1;
  Point.printStatic();

  var p2 = Point.bottom(10);
  p2.printInfo();

  Vector v = new Vector(100,200,300);
  v.printInfo();

  Coordinate coordinate = Coordinate(1,2);
  coordinate.printInfo();

  print(v is Point);
  print(coordinate is Point);

  SuperMan superMan = SuperMan();
  superMan.run();
  superMan.fly();
}

