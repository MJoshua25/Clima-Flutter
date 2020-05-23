import 'package:http/http.dart' as Http;
import 'dart:convert';

class NetwookHelper{
  NetwookHelper(this.url);

  final String url;

  Http.Response response = await Http.get('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
  if (response.statusCode == 200){
  String data = response.body;

  var decodeData = jsonDecode(data);
}