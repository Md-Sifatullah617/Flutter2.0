import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final txtController = TextEditingController();
  List todoList = [
  ];

  addValue(value) {
    setState(() {
      todoList.add({'item': value});
    });
  }

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
                        controller: txtController,
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      )),
                      const SizedBox(
                        width: 15,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          addValue(txtController.text);
                        },
                        child: const Icon(Icons.add),
                      )
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  flex: 90,
                  child: ListView.builder(
                      itemCount: todoList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Row(
                            children: [
                              Expanded(flex: 80, child: Text(todoList[index]['item'].toString())),
                              Expanded(
                                  flex: 20,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {},
                                  )),
                            ],
                          ),
                        );
                      }))
            ],
          ),
        ));
  }
}
