import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'order_item.dart';

/// The central state for the entire app.
///
/// Mostly contains state and actions for the cart feature.
///
/// This app manages state using the Provider pattern by Remi Rousselet:
/// https://github.com/rrousselGit/provider
///
/// Flutter's default state management often leads to redundancy
/// due to prop drilling (also popular in React-based apps).
/// Provider pattern is NOT exactly the same as Redux,
/// but shares a lot of principles with it
/// especially the one about having only ONE SOURCE OF TRUTH.
class AppState extends ChangeNotifier {
  String _selectedOutlet = '';
  List<OrderItem> _itemsInCart = [];

  /// Getter for selected outlet state.
  String get selectedOutlet {
    return this._selectedOutlet;
  }

  /// Getter for items currently in cart.
  /// The use of [UnmodifiableListView] instead of a regular [List]
  /// or one of its variants enforces immutability.
  UnmodifiableListView<OrderItem> get itemsInCart {
    return UnmodifiableListView(this._itemsInCart);
  }

  /// Returns number of items currently in the cart.
  int getCartSize() {
    return this._itemsInCart.length;
  }

  /// Marks the given outlet (id) as the selected outlet,
  /// and triggers state change.
  void setOutlet(String id) {
    this._selectedOutlet = id;
    this.notifyListeners();
  }

  /// Adds the given order item to cart, and triggers state change.
  void addItemToCart(OrderItem item) {
    this._itemsInCart.add(item);
    this.notifyListeners();
  }

  /// Removes the given order item from cart, and triggers state change.
  /// TODO: Exception handling (item may not exist in cart).
  void removeItemFromCart(OrderItem item) {
    this._itemsInCart.remove(item);
    this.notifyListeners();
  }

  /// Removes all items currently in cart, and triggers state change.
  void resetCart() {
    this._itemsInCart.clear();
    this.notifyListeners();
  }
}
