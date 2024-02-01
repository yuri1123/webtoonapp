import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoonapp/models/webtoon_model.dart';

class ApiService {
  static final String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static final String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      // print(response.body);
      // print(webtoons);
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
        // print(webtoonInstances);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
