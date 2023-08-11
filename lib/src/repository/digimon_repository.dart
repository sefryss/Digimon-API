import 'package:dio/dio.dart';
import 'package:digimon_api/src/models/digimon.dart';

class DigimonRepository {
  final Dio _dio = Dio();
  final String apiUrl = "https://digimon-api.vercel.app/api/digimon";

  Future<List<Digimon>> fetchDigimons() async {
    try {
      final response = await _dio.get(apiUrl);
      final data = response.data as List<dynamic>;

      final digimons = data
          .map((e) => Digimon(
                name: e['name'],
                img: e['img'],
                level: e['level'],
              ))
          .toList();

      return digimons;
    } catch (error) {
      throw Exception('Failed to fetch digimons');
    }
  }
}
