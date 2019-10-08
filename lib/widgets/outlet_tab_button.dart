import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_menu/models/app_state.dart';

class OutletTabButton extends StatelessWidget {
  final String id;
  final String text;

  OutletTabButton({@required this.id, @required this.text});

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);
    bool isActive = appState.selectedOutlet == this.id;

    return GestureDetector(
      onTap: () {
        appState.setOutlet(this.id);
      },
      child: Column(
        children: <Widget>[
          Text(
            this.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
          Container(
            width: isActive ? 15.0 : 0.0,
            child: Divider(
              color: Colors.white,
              thickness: 3.0,
            ),
          ),
        ],
      ),
    );
  }
}
