import 'Item.dart';
import 'ShoppingCart.dart';

main(){
  ShoppingCart(name: "taobao")
  ..bookings = [Item(1.0, "iphone"),Item(2.0, "iphone-xs")]
  ..printInfo();


  ShoppingCart shoppingCart2 = ShoppingCart.withCode(name: "Tmall",code: "123");
  shoppingCart2.bookings = [Item(2.0, "iphone"),Item(3.0, "iphone-xs")];

  print(shoppingCart2.price);

  print(shoppingCart2.getInfo());
}