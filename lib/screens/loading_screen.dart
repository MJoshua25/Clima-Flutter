import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';


const String apiKey = "6053fb9ebacfd4868781ad9e892236ee";

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async{
    Location location = Location();
    await location.getCurrentLocation();
    longitude =location.longitude;
    latitude = location.latitude;

    NetwookHelper netwookHelper = NetwookHelper('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    netwookHelper.getData();
    double longitude = decodeData['coord']['lon'];
    double latitude = decodeData['coord']['lat'];

    print(longitude);

    String description = decodeData['weather'][0]['description'];
    int condition = decodeData['weather'][0]['id'];

    double temperature = decodeData['main']['temp'];

    String city = decodeData['name'];

    print(description);
    print(city);
  }

  void getData() async{




  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}
