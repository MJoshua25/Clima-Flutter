import 'package:http/http.dart' as Http;
import 'dart:convert';

class NetwookHelper{
  NetwookHelper(this.url);

  final String url;
  void getData() async{
    Http.Response response = await Http.get(url);
    if (response.statusCode == 200){
      String data = response.body;

      var decodeData = jsonDecode(data);

    }else{
      print(response.statusCode);
    }
  }
}