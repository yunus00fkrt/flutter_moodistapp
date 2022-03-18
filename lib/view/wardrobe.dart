import 'package:flutter/material.dart';
import 'package:flutter_moodistapp/drawerMenu.dart';
import 'package:flutter_moodistapp/view/wardrobeDetail.dart';

class Wardrobe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List myClothes = [
      "Sapkalarım",
      "Üstlerim",
      "Altlarım",
      "Ayakkabılarım",
      "Gözlüklerim",
    ];
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("MoodistApp"),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: myClothes.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/wardrobeDetail');
            },
            child: Container(
              height: 250,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.white,
                margin: EdgeInsets.all(8),
                elevation: 10,
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset("assets/images/karakter.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        myClothes[index],
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

/*
Container(
          height: 250,
          child: Card(
            color: Colors.white,
            margin: EdgeInsets.all(8),
            elevation: 10,
            child: Column(
              children: [
                Expanded(
                  child: Image.asset("assets/images/karakter.png"),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Altlarım",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 250,
          child: Card(
            color: Colors.white,
            margin: EdgeInsets.all(8),
            elevation: 10,
            child: Column(
              children: [
                Expanded(
                  child: Image.asset("assets/images/karakter.png"),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Ayakkabılarım",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 250,
          child: Card(
            color: Colors.white,
            margin: EdgeInsets.all(8),
            elevation: 10,
            child: Column(
              children: [
                Expanded(
                  child: Image.asset("assets/images/karakter.png"),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Sapkalarım",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
*/