import 'package:dio/dio.dart';
import 'package:droidconke2020_flutter/config/api.dart';
import 'package:droidconke2020_flutter/models/models.dart';
import 'package:droidconke2020_flutter/utils/rest_client.dart';
import 'package:get_it/get_it.dart';

class ScheduleService {
  static Future<List<Session>> getSchedule() async {
    String url = '${ApiConfig.serverUrl}events/${ApiConfig.eventSlug}/schedule';
    Response response = await GetIt.I<RestClient>().dio.get(
          url,
        );
    return response.data['data']
        .map<Session>((e) => Session.fromJson(e))
        .toList();
  }

  static Future<GroupedSchedule> getGroupedSchedule() async {
    String url = '${ApiConfig.serverUrl}events/${ApiConfig.eventSlug}/schedule';
    Response response = await GetIt.I<RestClient>().dio.get(
      url,
      queryParameters: {'grouped': true},
    );

    List<DaySchedule> daySchedules =
        (response.data['data'] as Map<String, dynamic>)
            .map<String, DaySchedule>((k, v) {
              var sessions = v
                  .map<Session>((e) => Session.fromJson(e))
                  .toList(growable: false);
              var daySchedule = DaySchedule(dateString: k, schedule: sessions);
              return MapEntry(k, daySchedule);
            })
            .values
            .toList();
    return GroupedSchedule(daySchedules);
  }

  static Future<GroupedSchedule> getGroupedBookmarks() async {
    String url =
        '${ApiConfig.serverUrl}events/${ApiConfig.eventSlug}/bookmarked_schedule';
    Response response = await GetIt.I<RestClient>().dio.get(
      url,
      queryParameters: {'grouped': true},
    );

    List<DaySchedule> daySchedules =
        (response.data['data'] as Map<String, dynamic>)
            .map<String, DaySchedule>((k, v) {
              var sessions = v
                  .map<Session>((e) => Session.fromJson(e))
                  .toList(growable: false);
              var daySchedule = DaySchedule(dateString: k, schedule: sessions);
              return MapEntry(k, daySchedule);
            })
            .values
            .toList();
    return GroupedSchedule(daySchedules);
  }

  static Future<Response> toggleBookmark(int sessionId) async {
    String url =
        '${ApiConfig.serverUrl}events/${ApiConfig.eventSlug}/bookmark_schedule/$sessionId';
    return await GetIt.I<RestClient>().dio.post(url);
  }
}
