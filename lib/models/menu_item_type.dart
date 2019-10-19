import 'package:flutter/foundation.dart';

class MenuItemType {
  final String name;
  final double price;

  MenuItemType({@required this.name, @required this.price});

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'price': this.price,
    };
  }
}
