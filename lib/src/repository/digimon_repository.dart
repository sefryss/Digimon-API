import 'package:dio/dio.dart';
import 'package:digimon_api/src/models/digimon.dart';

class DigimonRepository {
  final Dio _dio = Dio();

  Future<List<digimon>> getDigimon() async {
    try {
      final response =
          await _dio.get('https://digimon-api.vercel.app/api/digimon');
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = response.data;
        final List<digimon> digimons =
            jsonData.map((data) => digimon.fromJson(data)).toList();
        return digimons;
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
  }
}
