import 'package:flutter/material.dart';
import 'package:ss_menu/constants.dart';

/// Interface for [RadioTileList]'s onChanged callback.
typedef void OnChangedCallback(
  Map<String, String> changedOption,
);

/// A list of radio options.
///
/// This widget wraps Material's [RadioListTile] into a ListView,
/// which it them populates based on [options] Map.
///
/// This is really a convenience widget built on top of [RadioListTile],
/// which may be a little confusing to use for newcomers.
class RadioTileList extends StatelessWidget {
  /// A [Map] of string options.
  /// The key is used as [RadioListTile]'s title as well as value.
  /// The value is used as [RadioListTile]'s subtitle.
  final Map<String, String> options;

  /// Represents the selected [RadioListTile].
  /// In other words, it is used as the groupValue for all [RadioListTile]s.
  final String selectedValue;

  /// A callback function that is assigned as changed event handler
  /// to all [RadioListTile]s.
  final OnChangedCallback onChanged;

  /// Controls the visibility of tile subtitle:
  /// true by default.
  final bool showSubtitle;

  RadioTileList({
    @required this.options,
    this.selectedValue,
    this.onChanged,
    this.showSubtitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: this.options.keys.map((key) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: <Widget>[
              Radio<String>(
                value: key,
                groupValue: this.selectedValue,
                activeColor: kThemeColorRed,
                onChanged: (String value) {
                  this.onChanged({key: this.options[key]});
                },
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    if (key != this.selectedValue) {
                      this.onChanged({key: this.options[key]});
                    }
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        key,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Visibility(
                        visible: this.showSubtitle,
                        child: Text(
                          this.options[key],
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
