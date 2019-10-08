import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_menu/screens/menu_screen.dart';
import 'package:ss_menu/models/app_state.dart';

void main() => runApp(SSMenuApp());

class SSMenuApp extends StatefulWidget {
  @override
  _SSMenuAppState createState() => _SSMenuAppState();
}

class _SSMenuAppState extends State<SSMenuApp> {
  AppState appState = AppState();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => this.appState,
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        home: MenuScreen(),
      ),
    );
  }
}
