import 'package:flutter/material.dart';
import 'package:flutter_moodistapp/drawerMenu.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Moodist App Signup"),
      ),
      body: Container(
        margin: EdgeInsets.all(40),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 12),
              child: Text(
                "Moodist",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Günlük kombinin bir tık uzakta.",
                style: TextStyle(color: Colors.grey.shade700),
              ),
              margin: EdgeInsets.only(bottom: 20),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 16,
              margin: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(labelText: "kullanıcı adı"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 16,
              margin: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(labelText: "e-mail"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 16,
              margin: EdgeInsets.all(20),
              child: TextFormField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(labelText: "password"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 16,
              margin: EdgeInsets.all(20),
              child: TextFormField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(labelText: "verify password"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 16,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(minimumSize: Size(100, 200)),
                child: Text("Kayıt ol"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Moodist nedir?",
                    style: TextStyle(color: Color.fromARGB(255, 96, 160, 23)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
