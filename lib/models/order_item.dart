import 'package:flutter/foundation.dart';
import 'menu_item.dart';
import 'menu_item_type.dart';

/// Data class to represent item in cart.
///
/// A [MenuItem] is ideally converted to an [OrderItem]
/// when adding item from menu to cart.
class OrderItem extends MenuItem {
  /// Sequence number of item in its category.
  final int sequenceNum;

  /// A [MenuItem] may have multiple types/variants.
  /// This prop holds the user-selected type.
  final MenuItemType selectedType;

  /// *DEPRECATED* Not in use.
  ///
  /// Whether the item is to be complimented with an ice cream scoop.
  final bool withIceCream;

  /// Whether the item has been prepared.
  ///
  /// A [CustomerOrder] has [isCompleted] prop that represents
  /// the doneness of the whole order. [OrderItem]'s [isDone] prop
  /// represents the doneness of its item only.
  /// Useful to track the doneness of individual items in an order.
  final bool isDone;

  OrderItem({
    @required String name,
    @required String category,
    @required bool isNonVeg,
    double price,
    List<MenuItemType> types,
    String imagePath,
    String description,
    List<String> syrups,
    List<String> toppings,
    int freeSyrups,
    int freeToppings,
    List<String> inclusions,
    this.sequenceNum = 0,
    this.selectedType,
    this.withIceCream = false,
    this.isDone = false,
  }) : super(
          name: name,
          category: category,
          isNonVeg: isNonVeg,
          price: price,
          types: types,
          imagePath: imagePath,
          description: description,
          syrups: syrups,
          toppings: toppings,
          freeSyrups: freeSyrups,
          freeToppings: freeToppings,
          inclusions: inclusions,
        );

  /// Returns a [Map] representation of the object,
  /// that can be used as a serialized form for sending to Firebase.
  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'category': this.category,
      'isNonVeg': this.isNonVeg,
      'price': this.price,
      'types': this.types != null
          ? this.types.map<Map>((type) => type.toMap()).toList()
          : null,
      'imagePath': this.imagePath,
      'description': this.description,
      'syrups': this.syrups,
      'toppings': this.toppings,
      'inclusions': this.inclusions,
      'sequenceNum': this.sequenceNum,
      'selectedType':
          this.selectedType != null ? this.selectedType.toMap() : null,
      'withIceCream': this.withIceCream,
      'isDone': this.isDone,
    };
  }
}
