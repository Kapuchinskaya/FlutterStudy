import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    //https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey
    //https://api.openweathermap.org/data/2.5/weather?lat=52.3561017&lon=4.895095&appid=e5da0bc9504f19fafab90dcffd648b54
    if (response.statusCode == 200) {
      String data = response.body;
      //print(response.statusCode);

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
