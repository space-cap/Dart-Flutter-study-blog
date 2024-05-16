import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url); // 비동기로 정보를 받아온다.
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Error();
  }
}
