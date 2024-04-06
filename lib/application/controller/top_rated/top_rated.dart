import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/application/model/top_rated/top_rated.dart';


String getUrl =
    'https://api.themoviedb.org/3/movie/top_rated?api_key=7a15902b17b04e18db644fe8e3f72345';

Future<List<TopRated>> getTopRatedMovies() async {
  final _response = await http.get(Uri.parse(getUrl));
  final _bodyAsJson = jsonDecode(_response.body) as Map<String, dynamic>;
  final _data = TopRatedList.fromJson(_bodyAsJson['results']);

  return _data.topRatedList;
}