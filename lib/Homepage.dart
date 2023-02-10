import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  mySnackbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World!"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text(""),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("contact"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Mail"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
            ),
          ],
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: ElevatedButton(
                onPressed: () {
                  mySnackbar("You Clicked Here!", context);
                },
                child: const Text("Click here!")))
      ]),
    );
  }
}
