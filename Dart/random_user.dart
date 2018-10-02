import 'dart:convert';
import 'package:http/http.dart' as http;

main() async {
  // cerner_2^5_2018
  var inc = 'gender,name,nat';
  var requestUrl = 'https://randomuser.me/api/?inc=$inc';
  var response = await http.get(requestUrl);

  var jsonResponse = JSON.decode(response.body);

  var firstResult = jsonResponse['results'][0];
  var name = firstResult['name'];
  var nat = firstResult['nat'];
  print('$name : $nat');
}
