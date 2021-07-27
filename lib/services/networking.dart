import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;
  Future getDate() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var jsonfile=jsonDecode(data);
      return jsonfile;
    }
    else{
      print(response.statusCode);}
  }
}
