import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'current_user.freezed.dart';

part 'current_user.g.dart';

@freezed
abstract class CurrentUser with _$CurrentUser {
  factory CurrentUser({@required User user, @required String token}) = _CurrentUser;

  factory CurrentUser.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserFromJson(json);
}
