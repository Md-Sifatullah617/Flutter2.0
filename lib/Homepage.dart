import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MySnackbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World!"),
        centerTitle: true,
        elevation: 0,
        actions: [
          InkWell(
              onTap: () {
                MySnackbar("Chat Icon", context);
              },
              child: const Icon(Icons.chat)),
              const SizedBox(width: 10,),
          InkWell(
              onTap: () {
                MySnackbar("Settings Icon", context);
              },
              child: const Icon(Icons.settings)),
              const SizedBox(width: 10,),
          InkWell(
              onTap: () {
                MySnackbar("Person Icon", context);
              },
              child: const Icon(Icons.person)),
              const SizedBox(width: 5,),
        ],
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
    );
  }
}
