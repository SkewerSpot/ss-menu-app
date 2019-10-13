import 'package:flutter/material.dart';
import 'package:ss_menu/constants.dart';
import 'package:ss_menu/widgets/screen_top_bar.dart';
import 'package:ss_menu/widgets/outlets_tab_view.dart';

class MenuScreen extends StatelessWidget {
  static final String id = 'menu';

  @override
  Widget build(BuildContext context) {
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
              child: OutletsTabView(),
            ),
          ],
        ),
      ),
    );
  }
}
