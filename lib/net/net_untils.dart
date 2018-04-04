
import 'dart:async';
import 'dart:convert' show utf8, json;
import 'dart:io';

Future<Map<String, dynamic>> load(String url) async {
  HttpClient client = new HttpClient();
  HttpClientRequest request = await client.getUrl(Uri.parse(url));

  HttpClientResponse response = await request.close();
  if (response.statusCode == HttpStatus.OK) {
    return json.decode(await response.transform(utf8.decoder).join());
  }
  return json.decode(netError());
}

String netError() {
  return "{errorCode:400,errorText:'net is failed'}";
}
