import 'class.dart' as Tss;
/**
 * 简化处理变量实例缺失的运算符
 * 运算符覆写
 */

class Vector{
  num x,y;
  Vector(this.x,this.y);
  //自定义相加运算符
  Vector operator +(Vector v) => Vector(x+v.x,y+v.y);
  //覆写相等运算符，判断向量相等
  bool operator == (dynamic v) => x == v.x && y == v.y;
}


main(){
  Tss.Point p;
  //p.printInfo();
  p?.printInfo();

  Tss.Point p2 = Tss.Point(1,2);
  p2.printInfo();

  p??=p2;
  p2.name="dart";
  p?.printInfo();

  //运算符覆写
  final x = Vector(1,1);
  final y = Vector(2,2);
  final z = Vector(3,3);
  print(z == (x+y));

}