import 'package:flutter/material.dart';
import 'package:flutter_moodistapp/drawerMenu.dart';
import 'package:flutter_moodistapp/getControllers/controller.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final DataController _dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Ayarlar"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Karanlık tema"),
            leading: Icon(Icons.change_circle_rounded),
            trailing: Switch(
              value: _dataController.temaBilgisi,
              onChanged: (newValue) {
                _dataController.assignNewTheme(newValue);
              },
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Obx(
                () => DropdownButton(
                  value: _dataController.sehirBilgisi.toString(),
                  items: sehirler.map((e) {
                    return DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    _dataController.assignNewCity(newValue);
                  },
                ),
              ),
              leading: Icon(Icons.location_on_rounded),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Hesap ayarları"),
              leading: Icon(Icons.account_box),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Hakkımızda"),
              leading: Icon(Icons.help_rounded),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              tileColor: Colors.redAccent,
              title: Text("Çıkıs yap"),
              leading: Icon(Icons.logout),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> sehirler = [
  "ankara",
  "istanbul",
  "izmir",
];
