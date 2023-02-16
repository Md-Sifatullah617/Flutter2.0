import 'package:flutter/material.dart';
import 'package:rabiil_hasan/show_details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listItem = [
    {
      "image":
          "https://pub-static.fotor.com/assets/projects/pages/47889e6f-1144-4fb2-a1be-6961057d587c/600w/computer-programming-and-coding-banner-9239fa28-9139-49e0-8064-16be08ed9d03.jpg",
      "title": "Hello World!",
      "details": "Hi! I'm Sifat"
    },
    {
      "image":
          "https://static-fastly.hackerearth.com/static/hackerearth/images/logo/HE_cover.jpg",
      "title": "programming 1",
      "details": "Hi! I'm Tanmoy"
    },
    {
      "image":
          "https://png.pngtree.com/thumb_back/fw800/background/20220522/pngtree-programming-and-coding-banner-working-image_1375029.jpg",
      "title": "Java",
      "details": "Hi! I'm Fahim"
    },
    {
      "image":
          "https://www.trendycovers.com/covers/programmers_of_tomorrow_facebook_cover_1484111256.jpg",
      "title": "programming 2",
      "details": "Hi! I'm Auntu"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpL6s5kf30EuF1GiGeGBQFsR3sYYdZWLUaFGhrvJVLm3UopvkMONun50mEBm6jl-bMU4c&usqp=CAU",
      "title": "programming 3",
      "details": "Hi! I'm Nishat"
    },
    {
      "image":
          "https://www.freecodecamp.org/news/content/images/2020/03/illustration_cover.png",
      "title": "programming 4",
      "details": "Hi! I'm Samiul"
    },
    {
      "image":
          "https://cdn.hackr.io/uploads/posts/large/1674050108KGIdvP8jnK.png",
      "title": "print f",
      "details": "Hi! I'm Dada"
    },
    {
      "image":
          "https://www.freecodecamp.org/news/content/images/2022/11/what-is-programming.png",
      "title": "hi man",
      "details": "Hi! I'm VR"
    },
  ];

  showSnackbar(context, msg) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
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
        body: ListView.builder(
            itemCount: listItem.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsOnTap(items: listItem[index]['details'].toString())));
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 200,
                  child: Image.network(
                    listItem[index]['image']!,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            }));
  }
}
