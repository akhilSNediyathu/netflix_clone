import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../model/upcoming/upcoming.dart';



const url =
    'https://api.themoviedb.org/3/movie/upcoming?api_key=7a15902b17b04e18db644fe8e3f72345';
Future<List<Upcoming>> getAllUpcoming() async {
  final response = await http.get(Uri.parse(url));
  final bodyAsResponse = jsonDecode(response.body) as Map;
  final result = UpcomingList.fromJson(bodyAsResponse['results']);
  print(result.upcomingList[0].imagePath);
  return result.upcomingList;
}