import 'Item.dart';
import 'ShoppingCart.dart';

main(){
  ShoppingCart shoppingCart = ShoppingCart("taobao","111");
  shoppingCart.bookings = [Item(1.0, "iphone"),Item(2.0, "iphone-xs")];

  print(shoppingCart.price);

  print(shoppingCart.getInfo());
}