import 'Item.dart';
import 'Meta.dart';
import 'PrintHelper.dart';

class ShoppingCart extends Meta with PrintHelper {
  DateTime date;
  String code;
  List<Item> bookings;

  ShoppingCart({name}) : this.withCode(name: name, code: null);

  ShoppingCart.withCode({name, this.code})
      : date = DateTime.now(),
        super(0.0, name);

  double get price => bookings.reduce((value, ele) => value + ele).price;

  String getInfo() => """
  购物车信息：
  --------------
  用户名: $name
  优惠码: ${code??"没有"}
  总价: $price
  Date: $date
  """;
}
