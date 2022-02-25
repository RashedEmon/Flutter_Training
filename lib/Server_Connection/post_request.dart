import 'dart:convert';
import 'dart:io';

class PostSerializer extends Object{


  static Future<String> getJsonData(int count) async {
    String jsonString = "Data";
    Uri uri = Uri.https('api.unsplash.com', '/photos/random', {
      'count': '$count',
      'client_id': '45rEc8b0NdV__-i1t8p97_g7HVxZKgfV09vc9bYqT9g'
    });
    HttpClientRequest request = await HttpClient().getUrl(uri);
    HttpClientResponse response = await request.close();
    jsonString = await response.transform(utf8.decoder).join();
    return jsonString;
  }
}