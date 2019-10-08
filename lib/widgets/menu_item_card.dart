import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_menu/constants.dart';
import 'package:ss_menu/models/app_state.dart';
import 'package:ss_menu/models/menu_item.dart';
import 'package:ss_menu/models/order_item.dart';

class MenuItemCard extends StatelessWidget {
  final MenuItem item;

  MenuItemCard({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Column(
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
                ],
              ),
              Container(
                width: 35.0,
                height: 35.0,
                child: FloatingActionButton(
                  backgroundColor: kThemeColorPurple,
                  child: Icon(
                    Icons.add,
                    size: 25.0,
                  ),
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  onPressed: () {
                    var appState = Provider.of<AppState>(context);
                    appState.addItemToCart(OrderItem(
                      name: this.item.name,
                      category: this.item.category,
                      isNonVeg: this.item.isNonVeg,
                      price: this.item.price,
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
