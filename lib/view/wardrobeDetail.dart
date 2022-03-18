import 'package:flutter/material.dart';
import 'package:flutter_moodistapp/drawerMenu.dart';

class WardrobeDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List myClothes = ["üst 1", "üst 2", "üst 3", "üst 4", "üst 5", "üst 6"];
    return Scaffold(
      appBar: AppBar(
        title: Text("MoodistApp"),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: myClothes.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
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
