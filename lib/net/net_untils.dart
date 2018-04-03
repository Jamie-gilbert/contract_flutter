import 'dart:_http';
import 'dart:async';
import 'dart:convert' show utf8, json;
import 'dart:io';

Future<Map<String, dynamic>> load(String url) async {
  HttpClient client = new HttpClient();
  HttpClientRequest request = await client.getUrl(Uri.parse(url));

  HttpClientResponse response = await request.close();
  if (response.statusCode == 200) if (response.headers.contentType.toString() !=
      ContentType.JSON.toString()) {
    throw new Exception("dataformater is not json");
  }
  return json.decode(await response.transform(utf8.decoder).join());
}
