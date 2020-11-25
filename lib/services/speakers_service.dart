import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:droidconke2020_flutter/config/api.dart';
import 'package:droidconke2020_flutter/models/models.dart';
import 'package:droidconke2020_flutter/utils/rest_client.dart';
import 'package:get_it/get_it.dart';

class SpeakersService {
  static Future<List<Speaker>> fetchAll() async {
    final url = '${ApiConfig.serverUrl}events/${ApiConfig.eventSlug}/speakers';
    final response = await GetIt.I<RestClient>().dio.get(
          url,
          options: buildCacheOptions(Duration(hours: 24)),
        );
    return response.data['data']
        .map<Speaker>((e) => Speaker.fromJson(e))
        .toList();
  }
}
