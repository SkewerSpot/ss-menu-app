import 'package:flutter/material.dart';
import 'package:ss_menu/constants.dart';
import 'package:ss_menu/screens/modal_screen_scaffold.dart';
import 'package:ss_menu/widgets/radio_tile_list.dart';

class ConfirmOrderScreen extends StatefulWidget {
  @override
  _ConfirmOrderScreenState createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  String selectedChannel;

  @override
  void initState() {
    super.initState();

    this.selectedChannel = kChannels.keys.first;
  }

  @override
  Widget build(BuildContext context) {
    return ModalScreenScaffold(
      screenTitle: 'Confirm Order',
      screenActionText: 'Confirm',
      onScreenActionPressed: () => {},
      body: <Widget>[
        Text(
          'Select channel',
          style: kSubHeadingStyle,
        ),
        RadioTileList(
          options: kChannels,
          onChanged: (Map<String, String> option) {
            this.setState(() => this.selectedChannel = option.keys.first);
          },
          selectedValue: this.selectedChannel,
        ),
      ],
    );
  }
}
