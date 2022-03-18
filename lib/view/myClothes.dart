import 'package:flutter/material.dart';
import 'package:flutter_moodistapp/drawerMenu.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      body: CustomScrollView(
        primary: false,
        slivers: [
          SliverAppBar(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(15))),
            expandedHeight: 500,
            pinned: true, // assağı kaydırıldığında appbar gözüksün.
            primary: true, // appbar yukarı
            title: Text("Giyimim"),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/wardrobeDetail');
                      },
                      child: Image(
                        image: AssetImage("assets/images/karakter.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.white,
                  margin: EdgeInsets.all(10),
                  elevation: 10,
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset("assets/images/karakter.png"),
                      ),
                      Text(
                        "Tisört",
                        style: TextStyle(fontSize: 26),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "'Üstlerim' bölümünden",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade800),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }, childCount: 5),
          ),
        ],
      ),
    );
  }
}
