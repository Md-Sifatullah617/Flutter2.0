import 'package:flutter/material.dart';

class DetailsOnTap extends StatelessWidget {
  final String items;
  const DetailsOnTap({super.key,required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details page"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Center(child: Text(items, style: const TextStyle(
                fontSize: 25
            ),))
        ],
      ),
    );
  }
}

