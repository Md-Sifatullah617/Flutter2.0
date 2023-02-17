import 'package:flutter/material.dart';
import 'package:rabiil_hasan/homepage.dart';

void main() {
  runApp(const MyAPP());
}


class MyAPP extends StatelessWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(),
        theme: ThemeData(primarySwatch: Colors.indigo),
        darkTheme: ThemeData.dark(),
      color: Colors.blue,
    );
  }
}
