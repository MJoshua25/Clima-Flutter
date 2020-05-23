import 'package:geolocator/geolocator.dart';

class Location{

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