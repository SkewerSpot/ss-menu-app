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
  String selectedTaxOption;
  double discountAmount;
  String customerName;
  String customerMobile;
  String customerCarNum;
  String customerCarMake;
  String customerComments;

  @override
  void initState() {
    super.initState();

    this.selectedChannel = kChannels.keys.first;
    this.selectedTaxOption = kTaxOptions.keys.first;
    this.discountAmount = 0.0;
    this.customerName = '';
    this.customerMobile = '';
    this.customerCarNum = '';
    this.customerCarMake = '';
    this.customerComments = '';
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
          showSubtitle: false,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Select taxability',
          style: kSubHeadingStyle,
        ),
        RadioTileList(
          options: kTaxOptions,
          onChanged: (Map<String, String> option) {
            this.setState(() => this.selectedTaxOption = option.keys.first);
          },
          selectedValue: this.selectedTaxOption,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Customer details',
          style: kSubHeadingStyle,
        ),
        SizedBox(
          height: 10.0,
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'Discount',
          ),
          onChanged: (String value) =>
              this.discountAmount = double.parse(value),
        ),
        SizedBox(
          height: 10.0,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Name',
          ),
          onChanged: (String value) => this.customerName = value,
        ),
        SizedBox(
          height: 10.0,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Mobile number',
          ),
          onChanged: (String value) => this.customerMobile = value,
        ),
        SizedBox(
          height: 10.0,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Car number',
          ),
          onChanged: (String value) => this.customerCarNum = value,
        ),
        SizedBox(
          height: 10.0,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Car model',
          ),
          onChanged: (String value) => this.customerCarMake = value,
        ),
        SizedBox(
          height: 10.0,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Comments',
          ),
          onChanged: (String value) => this.customerComments = value,
        ),
      ],
    );
  }
}
