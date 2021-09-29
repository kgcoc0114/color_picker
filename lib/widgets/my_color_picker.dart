import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider_demo/theme_model.dart';
import 'package:provider/provider.dart';

void MyColorPicker(BuildContext context) {
  var _color = context.read<ThemeModel>();
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            titlePadding: EdgeInsets.all(0),
            contentPadding: EdgeInsets.all(0),
            content: Wrap(
              children: [
                ColorPicker(
                    pickerColor: _color.mainColor,
                    onColorChanged: (color) {
                      print(_color.mainColor);
                      _color.changeColor(color);
                    })
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OKOK"))
            ],
          ));
}
