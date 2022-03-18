import 'package:flutter/material.dart';
import 'package:flutter_moodistapp/getControllers/controller.dart';
import 'package:flutter_moodistapp/getDataBindings/data_binding.dart';
import 'package:flutter_moodistapp/view/login.dart';
import 'package:flutter_moodistapp/view/myClothes.dart';
import 'package:flutter_moodistapp/view/settings.dart';
import 'package:flutter_moodistapp/view/signup.dart';
import 'package:flutter_moodistapp/view/wardrobe.dart';
import 'package:flutter_moodistapp/view/wardrobeDetail.dart';
import 'package:flutter_moodistapp/view/mainPage.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(DataController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: DataBinding(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey)),
      title: "MoodistApp",
      initialRoute: '/login',
      routes: {
        '/': (context) => MainPage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/wardrobe': (context) => Wardrobe(),
        '/wardrobeDetail': (context) => WardrobeDetail(),
        '/myAccount': (context) => MyAccount(),
        '/settings': (context) => Settings(),
      },
    );
  }
}
