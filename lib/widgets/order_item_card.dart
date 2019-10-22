import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_menu/models/app_state.dart';
import 'package:ss_menu/models/order_item.dart';
import 'package:ss_menu/widgets/addon_list.dart';

/// Widget to display an [OrderItem].
///
/// Displays item name (final name may be different from value in [MenuItem]),
/// selected syrups and toppings, price, and a button to
/// remove item from cart.
///
/// Usually used to show an item in cart.
class OrderItemCard extends StatelessWidget {
  /// The item to display in card.
  final OrderItem item;

  OrderItemCard({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.name,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      '₹ ${this.item.price.toString()}',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    AddonList(
                      addons: this.item.syrups ?? [],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    AddonList(
                      addons: this.item.toppings ?? [],
                    ),
                  ],
                ),
              ),
              Container(
                width: 35.0,
                height: 35.0,
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  color: Color(0xFFF6F8FC),
                  child: Icon(
                    Icons.delete_forever,
                    size: 25.0,
                    color: Colors.grey,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  onPressed: () => appState.removeItemFromCart(this.item),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
