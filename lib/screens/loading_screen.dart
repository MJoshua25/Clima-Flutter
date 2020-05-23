import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';


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
    getLocation();
  }

  void getLocation() async{
    Location location = Location();
    await location.getCurrentLocation();
    longitude =location.longitude;
    latitude = location.latitude;
    print(latitude);
    print(longitude);
    getData();
  }

  void getData() async{

      double longitude = decodeData['coord']['lon'];
      double latitude = decodeData['coord']['lat'];

      print(longitude);

      String description = decodeData['weather'][0]['description'];
      int condition = decodeData['weather'][0]['id'];

      double temperature = decodeData['main']['temp'];

      String city = decodeData['name'];

      print(description);
      print(city);

    }else{
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}
