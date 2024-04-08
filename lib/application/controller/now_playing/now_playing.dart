// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/application/model/now_playing/now_playing.dart';




String getUrl =
    'https://api.themoviedb.org/3/movie/now_playing?api_key=7a15902b17b04e18db644fe8e3f72345';

Future<List<NowPlaying>> getAllNowPlaying() async {
  final _response = await http.get(Uri.parse(getUrl));
  final _bodyAsJson = jsonDecode(_response.body) as Map<String, dynamic>;
  final _data = NowplayingList.fromJson(_bodyAsJson['results']);
  print(_data.nowplayingList[0].overview);
  return _data.nowplayingList;
}