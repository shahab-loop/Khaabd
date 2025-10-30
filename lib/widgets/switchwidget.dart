import 'package:flutter/material.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';

class SwitchExample extends StatefulWidget {
  @override
  _SwitchExampleState createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      activeTrackColor: ThemeManager.white,
      activeColor: ThemeManager.secondaryColor,
      onChanged: (value) {
        setState(() {
          isSwitched = value; // toggle switch state
        });
      },
    );
  }
}
