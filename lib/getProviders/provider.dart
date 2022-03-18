import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Provider extends GetConnect {

  Future<int?> getLocationID(String sehirAdi) async {
    final response = await get("https://www.metaweather.com/api/location/search?query=$sehirAdi");
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    }
    return response.body[0]["woeid"];
  }

  Future<dynamic> getWeather(int sehirID) async {
    final response = await get("https://www.metaweather.com/api/location/$sehirID");
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    }
    return response.body;
  } 

  Future<dynamic> getWeatherData(String sehir) async {
    final int? sehirID = await getLocationID(sehir);
    return await getWeather(sehirID!);
  }
}