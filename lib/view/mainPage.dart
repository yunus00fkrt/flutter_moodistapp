import 'package:flutter/material.dart';
import 'package:flutter_moodistapp/drawerMenu.dart';
import 'package:flutter_moodistapp/getControllers/controller.dart';
import 'package:get/get.dart';

class MainPage extends GetView<DataController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      body: controller.obx(
        (data) {
          final myData = data['consolidated_weather'][1];
          return CustomScrollView(
            primary: false,
            slivers: [
              SliverAppBar(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15))),
                expandedHeight: 500,
                pinned: true, // assağı kaydırıldığında appbar gözüksün.
                primary: true, // appbar yukarı
                title: Text("Main Page"),
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Opacity(
                            opacity: 0.8,
                            child: Image.network("https://www.metaweather.com/static/img/weather/png/" + myData['weather_state_abbr'] + ".png")),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 100, top: 100),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/myAccount');
                          },
                          child: Image(
                            image: AssetImage("assets/images/karakter.png"),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height / 20,
                            left: MediaQuery.of(context).size.width / 6),
                        child: // Dinlemek istediğim yeri bu widget ile çevreledim.
                          Text(
                            myData['the_temp'].round().toString() + "°\n" + 
                            myData['weather_state_name'].toString() + "\n" + 
                            data['title'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
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
                            "Suit 1",
                            style: TextStyle(fontSize: 26),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "Önerilen Kombin",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey.shade800),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }, childCount: 8),
              ),
            ],
          );
        },
      ),
    );
  }
}


/* 
Container(
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
                        "Suit 1",
                        style: TextStyle(fontSize: 26),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Önerilen Kombin",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade800),
                        ),
                      )
                    ],
                  ),
                ),
              );
*/