import 'menu_item.dart';
import 'menu_item_type.dart';

class OrderItem extends MenuItem {
  final int sequenceNum;
  final MenuItemType selectedType;
  final bool withIceCream;
  final bool isDone;

  OrderItem({
    this.sequenceNum = 0,
    this.selectedType,
    this.withIceCream = false,
    this.isDone = false,
  });
}
