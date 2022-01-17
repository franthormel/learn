import 'package:http/http.dart';

const apiKey = '38b310940998d9c9e4df84b2224b177b';
const apiId = '5e0c3d5e';
const apiUrl = 'https://api.edamam.com/search';

class RecipeService {
  Future getData(String url) async {
    print('Calling url: $url');

    final response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      print(response.statusCode);
    }
  }

  Future<dynamic> getRecipes(
    String query,
    int from,
    int to,
  ) async {
    final recipeData = await getData(
      '$apiUrl?'
      'app_id=$apiId&'
      'app_key=$apiKey&'
      'q=$query&'
      'from=$from&'
      'to=$to',
    );

    return recipeData;
  }
}
