class Point {
  num x;
  num y;
  static num sValue;
  /**
   * 语法糖，等价于
      Point(num x,num y){
      this.x=x;
      this.y=y;
      }
   */
  Point(this.x, this.y);

  printInfo() => print("x=$x,y=$y");
  static printStatic() => print("static value=$sValue");
}

main(){
  Point p = Point(1, 2);
  p.printInfo();
  Point.printStatic();

  Point.sValue = 1;
  Point.printStatic();
}
