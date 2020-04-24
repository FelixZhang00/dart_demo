import 'Item.dart';
import 'Meta.dart';

class ShoppingCart extends Meta {
  DateTime date;
  String code;
  List<Item> bookings;

  ShoppingCart(name,this.code) : date=DateTime.now(),super(0.0, name);



 double get price {
    double sum = 0.0;
    for (var item in bookings) {
      sum += item.price;
    }
    return sum;
  }


  String getInfo() {
    return 'Shopping{name: $name, date: $date, code: $code, bookings: $bookings}';
  }
}
