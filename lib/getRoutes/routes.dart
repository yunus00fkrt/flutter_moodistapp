import 'package:flutter_moodistapp/getDataBindings/data_binding.dart';
import 'package:flutter_moodistapp/view/mainPage.dart';
import 'package:get/get.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => MainPage(),
      binding: DataBinding(),
    ),
  ];
}