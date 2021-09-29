import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/theme_model.dart';
import 'package:provider_demo/widgets/my_color_picker.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => new Size.fromHeight(80.0);

  @override
  Widget build(BuildContext context) {
    var color = context.watch<ThemeModel>();
    return AppBar(
      title: Text("AAAAA"),
      backgroundColor: color.mainColor,
      actions: [
        IconButton(
            onPressed: () {
              MyColorPicker(context);
            },
            icon: Icon(Icons.colorize))
      ],
    );
  }
}
