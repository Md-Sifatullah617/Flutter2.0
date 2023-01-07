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
          Builder(
              builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    icon: const Icon(Icons.person),
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            MySnackbar("Hey! Matharfakar.", context);
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 150,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(20)),
            // child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.end,
            //   children: [
            //     IconButton(
            //         onPressed: () {
            //           MySnackbar("Hey! I'm Search Button", context);
            //         },
            //         icon: const Icon(Icons.search)),
            //     IconButton(
            //         onPressed: () {
            //           MySnackbar("Hey! I'm Settings Button", context);
            //         },
            //         icon: const Icon(Icons.settings)),
            //     IconButton(
            //         onPressed: () {
            //           MySnackbar("Hey! I'm Mail Button", context);
            //         },
            //         icon: const Icon(Icons.mail)),
            //   ],
            // ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackbar("Hey! I'm home menu.", context);
          } else if (index == 1) {
            MySnackbar("Hey! 'm contact menu.", context);
          } else if (index == 2) {
            MySnackbar("Hey! I'm profile menu.", context);
          }
        },
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
      endDrawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
                currentAccountPicture: Image(
                  image: NetworkImage(
                      "https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/320749900_560278115976861_693481335731401813_n.jpg?stp=dst-jpg_s600x600&_nc_cat=100&ccb=1-7&_nc_sid=5cd70e&_nc_eui2=AeHHzgJFc_jmSjQOavJKqhM58T5U3Hlnv_LxPlTceWe_8moUKZ4f5ScYDJh4xHws0niGH7GKo4NfKokzLCwmrW9g&_nc_ohc=K0VAFxSP-HIAX8DDZ93&_nc_ht=scontent.fdac135-1.fna&oh=00_AfDe5JBGnbvHATsBnFsSGFQta4C_Enaw0SCu-L0CAJn7rQ&oe=63BD8ED3"),
                ),
                accountName: Text("Md. Sifatullah"),
                accountEmail: Text("sifatullahsanowar1@gmail.com"))
          ],
        ),
      ),
    );
  }
}
