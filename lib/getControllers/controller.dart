import 'package:flutter_moodistapp/getProviders/provider.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DataController extends GetxController with StateMixin<dynamic> {
  final _sehirBilgisi = "istanbul".obs;
  final _temaBilgisi = false.obs;

  @override
  void onInit() { // uygulama belleğe alınırken çalışır.
    // TODO: implement onInit
    super.onInit();
    getWeatherData();
    debugPrint(_sehirBilgisi.value);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void assignNewCity(newCity) {
    _sehirBilgisi.value = newCity;
    getWeatherData();
    debugPrint(_sehirBilgisi.value);
  }
  get sehirBilgisi => _sehirBilgisi.value;
  set sehirBilgisi(newCity) => _sehirBilgisi.value = newCity;

  void assignNewTheme(newTheme) {
    _temaBilgisi.value = newTheme;
    _temaBilgisi.value ? Get.changeThemeMode(ThemeMode.dark) : Get.changeThemeMode(ThemeMode.light);
    debugPrint(_temaBilgisi.value.toString());
  }
  get temaBilgisi => _temaBilgisi.value;
  set temaBilgisi(newTheme) => _temaBilgisi.value = newTheme;

  getWeatherData(){
    Provider().getWeatherData(_sehirBilgisi.value).then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }

  
}