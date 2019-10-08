import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'order_item.dart';

class AppState extends ChangeNotifier {
  //
  // Private fields
  //
  String _selectedOutlet = '';
  List<OrderItem> _itemsInCart = [];

  //
  // Public getters
  //
  String get selectedOutlet {
    return this._selectedOutlet;
  }

  UnmodifiableListView<OrderItem> get itemsInCart {
    return UnmodifiableListView(this._itemsInCart);
  }

  //
  // Public methods
  //
  int getCartSize() {
    return this._itemsInCart.length;
  }

  void setOutlet(String id) {
    this._selectedOutlet = id;
    this.notifyListeners();
  }

  void addItemToCart(OrderItem item) {
    this._itemsInCart.add(item);
    this.notifyListeners();
  }

  void removeItemFromCart(OrderItem item) {
    this._itemsInCart.remove(item);
    this.notifyListeners();
  }
}
