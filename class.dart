class Point {
  num x;
  num y;
  int z;
  static num sValue;
  //类似c++的初始化列表
  Point(this.x, this.y):z=0;
  Point.bottom(num x):this(x,0);//重定向构造函数


  printInfo() => print("x=$x,y=$y,z=$z");
  static printStatic() => print("static value=$sValue");
}

main() {
  Point p = Point(1, 2);
  p.printInfo();
  Point.printStatic();

  Point.sValue = 1;
  Point.printStatic();

  var p2 = Point.bottom(10);
  p2.printInfo();
}

