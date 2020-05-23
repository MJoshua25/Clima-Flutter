import 'package:geolocator/geolocator.dart';

class Location{

  double latitude;
  double longitude;

}

void getLocation() async{
  try {
    Position position = await Geolocator().getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(position);
  } catch (e){
    print(e);
  }
}