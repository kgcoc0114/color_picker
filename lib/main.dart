import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/main_scaffold.dart';
import 'package:provider_demo/theme_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainScaffold(),
      ),
    );
  }
}
