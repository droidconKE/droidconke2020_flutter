import 'package:freezed_annotation/freezed_annotation.dart';

part 'speaker.freezed.dart';
part 'speaker.g.dart';

@freezed
abstract class Speaker with _$Speaker {
  factory Speaker({
    String name,
    String tagline,
    String biography,
    String avatar,
    String twitter,
    String facebook,
    String linkedin,
    String instagram,
    String blog,
    String company_website,
  }) = _Speaker;

  factory Speaker.fromJson(Map<String, dynamic> json) =>
      _$SpeakerFromJson(json);
}
