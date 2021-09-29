import 'package:flutter/material.dart';
import 'package:provider_demo/theme_model.dart';
import 'package:provider_demo/widgets/my_appbar.dart';
import 'package:provider/provider.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _color = context.watch<ThemeModel>();

    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text(
          '23',
          style: TextStyle(color: _color.mainColor, fontSize: 50),
        ),
      ),
    );
  }
}
