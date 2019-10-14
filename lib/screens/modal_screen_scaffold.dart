import 'package:flutter/material.dart';
import 'package:ss_menu/constants.dart';
import 'package:ss_menu/widgets/screen_action_button.dart';
import 'package:ss_menu/widgets/handle_line.dart';

/// A template widget to display screens as modals.
///
/// The design of this widget is divided into 3 sections:
/// 1. **Title** (denoted by [screenTitle])
/// 2. **Body** (denoted by [body])
/// 3. **Screen action** (denoted by [screenActionText] and [screenActionOnPressed])
class ModalScreenScaffold extends StatelessWidget {
  /// Top-level heading for the screen.
  final String screenTitle;

  /// Text for primary action button for the screen, akin to a submit button.
  final String screenActionText;

  /// /// onPressed for the primary action button.
  final Function onScreenActionPressed;

  /// Widget tree that the screen wants to additionally display.
  final List<Widget> body;

  ModalScreenScaffold({
    @required this.screenTitle,
    this.screenActionText,
    this.onScreenActionPressed,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          HandleLine(),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                    this.screenTitle,
                    style: kHeadingStyle,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ...this.body,
                SizedBox(
                  height: 10.0,
                ),
                Visibility(
                  visible: this.screenActionText != null &&
                      this.onScreenActionPressed != null,
                  child: ScreenActionButton(
                    text: this.screenActionText,
                    onPressed: () {
                      this.onScreenActionPressed();
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
