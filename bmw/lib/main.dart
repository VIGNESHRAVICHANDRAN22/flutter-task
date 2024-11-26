import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(BMW());
}

class BMW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMW ',
      home: BMWHome(),
    );
  }
}

class BMWHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "BMW MotorSport",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text("BMW@Gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/BMW.svg/900px-BMW.svg.png?20200406052529")),
              ),
              ListTile(
                  onTap: () {},
                  title: Text("Account"),
                  leading: Icon(Icons.person)),
              Divider(
                height: 0.1,
              ),
              ListTile(
                  onTap: () {},
                  title: Text("Favorite Models"),
                  leading: Icon(Icons.store)),
              Divider(
                height: 0.1,
              ),
              ListTile(
                  onTap: () {},
                  title: Text("Language"),
                  leading: Icon(Icons.language)),
              Divider(
                height: 0.1,
              ),
              ListTile(
                  onTap: () {}, title: Text("Help"), leading: Icon(Icons.help)),
              Divider(
                height: 0.1,
              ),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [Icon(Icons.search), Icon(Icons.share)],
          title: Text(
            "BMW",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            BMWCar(
              model: "BMW X5",
              imageUrl:
                  'https://stimg.cardekho.com/images/carexteriorimages/930x620/BMW/X5-2023/10452/1688992642182/front-left-side-47.jpg',
            ),
            BMWCar(
              model: 'BMW M3',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTECJG3aWDWRCUrCo7dlEUicFXfeOY1SVpQpA&s',
            ),
            BMWCar(
              model: 'BMW i8',
              imageUrl:
                  'https://i.insider.com/5e6fd9dac4854078b45faac6?width=700',
            ),
          ],
        ),
      ),
    );
  }
}

class BMWCar extends StatelessWidget {
  final String model;
  final String imageUrl;

  BMWCar({
    required this.model,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        margin: EdgeInsets.all(15),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                model,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
