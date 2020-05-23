import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as Http;
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async{
    Location location = Location();
    await location.getCurrentLocation();
    print(location.longitude);
    print(location.latitude);
  }

  void getData() async{
    Http.Response response = await Http.get('https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=439d4b804bc8187953eb36d2a8c26a02');
    if (response.statusCode == 200){
      String data = response.body;

      var decodeData = jsonDecode(data);
      double longitude = decodeData['coord']['lon'];
      double latitude = decodeData['coord']['lat'];

      print(longitude);

      String description = decodeData['weather'][0]['description'];
      int condition = decodeData['weather'][0]['id'];

      double temperature = decodeData['main']['temp'];

      String city = decodeData['name'];

      print(description);

    }else{
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
    );
  }
}
