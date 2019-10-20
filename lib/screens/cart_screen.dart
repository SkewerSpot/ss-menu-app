import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_menu/constants.dart';
import 'package:ss_menu/models/app_state.dart';
import 'package:ss_menu/screens/confirm_order_screen.dart';
import 'package:ss_menu/widgets/order_item_card.dart';
import 'package:ss_menu/widgets/screen_action_button.dart';
import 'package:ss_menu/widgets/screen_top_bar.dart';

class CartScreen extends StatelessWidget {
  static final String id = 'cart';

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);
    double cartValue = 0.0;
    if (appState.getCartSize() > 0) {
      cartValue = appState.itemsInCart
          .map((item) => item.price)
          .reduce((totalPrice, price) => totalPrice + price);
    }

    return Scaffold(
      backgroundColor: kThemeColorYellow,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: ScreenTopBar(),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: Container(
                  color: kThemeColorRed,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        child: Text(
                          'Review your order',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 15.0),
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 20.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('₹'),
                                  Text(
                                    cartValue.toString(),
                                    style: TextStyle(
                                      fontSize: 30.0,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: appState.getCartSize(),
                                  itemBuilder: (context, itemIndex) {
                                    return Column(
                                      children: <Widget>[
                                        OrderItemCard(
                                          key: UniqueKey(),
                                          item: appState.itemsInCart[itemIndex],
                                        ),
                                        SizedBox(
                                          height: 15.0,
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              ScreenActionButton(
                                text: 'Place order',
                                onPressed: () {
                                  if (appState.getCartSize() > 0) {
                                    showModalBottomSheet(
                                      context: context,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30.0),
                                          topRight: Radius.circular(30.0),
                                        ),
                                      ),
                                      builder: (context) =>
                                          ConfirmOrderScreen(),
                                    );
                                  }
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
