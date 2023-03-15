import "package:http/http.dart" as http;
import 'dart:convert' as convert;

Future<String> generateQuote(id) async {
  var url = Uri.https("breakingbadapi.com", "/api/quotes/${id}");
  try {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var name = jsonResponse[0]['author'];
      var quote = jsonResponse[0]['quote'];
      return "${name} : ${quote}";
    }
  } catch (error) {
    return "There are no quotes";
  }
}