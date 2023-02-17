import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List todoList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("To-Do App"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Expanded(
                  flex: 10,
                  child: Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      )),
                      const SizedBox(
                        width: 15,
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      )
                    ],
                  )),
              Expanded(
                  flex: 90,
                  child: ListView.builder(
                      itemCount: todoList.length,
                      itemBuilder: (context, index) {}))
            ],
          ),
        ));
  }
}
