import 'dart:convert';

import 'package:http/http.dart' as http;

fetch( String pathname, Map<String, String> qs ) async {
  String host = 'kobis.or.kr';
  qs[ 'key' ] = '0d415d4e84fb416338326942be0b1303';
  var response = await http.get( Uri.https(host, pathname, qs));
  return jsonDecode(response.body);
}
