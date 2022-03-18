import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_moodistapp/drawerMenu.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Moodist App Login"),
      ),
      body: Container(
        margin: EdgeInsets.all(40),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 6),
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 16,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(minimumSize: Size(100, 200)),
                child: Text("Giriş Yap"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Yoksa hala bir hesabın yok mu?"),
            ),
            Container(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/signup', (route) => false),
                  child: Text(
                    "Hemen oluştur!",
                    style: TextStyle(color: Color.fromARGB(255, 96, 160, 23)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
