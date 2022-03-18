import "package:flutter/material.dart";

class DrawerMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DrawerMenuState();
  }
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            arrowColor: Colors.blueAccent,
            accountName: Text("Yunus Patates"),
            accountEmail: Text("patatess@html.com"),
            currentAccountPicture: Image.network(
                "https://i.pinimg.com/474x/b1/f7/e5/b1f7e5be4de433cf45a3d14188af6838.jpg"),
          ),
          // expanded widget'ına almazsan hata veriyor.
          Expanded(
            child: ListView(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', (route) => false);
                  },
                  splashColor: Colors.cyan,
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/wardrobe', (route) => false);
                  },
                  splashColor: Colors.cyan,
                  child: ListTile(
                    leading: Icon(Icons.table_chart),
                    title: Text("Dolabım"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/myAccount', (route) => false);
                  },
                  splashColor: Colors.cyan,
                  child: ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("Giyimim"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/settings', (route) => false);
                  },
                  splashColor: Colors.cyan,
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Ayarlar"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/login', (route) => false);
                  },
                  splashColor: Colors.cyan,
                  child: ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("Login Page"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/signup', (route) => false);
                  },
                  splashColor: Colors.cyan,
                  child: ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("Signup Page"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Modica Sirketleri",
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
