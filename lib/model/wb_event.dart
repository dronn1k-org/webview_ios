// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wb_event.freezed.dart';
part 'wb_event.g.dart';

sealed class WBEvent {
  factory WBEvent.fromJson(Map<Object?, Object?> json) {
    final beautyMap = json.map((key, value) => MapEntry(key as String, value));
    return _eventTypeMap[json['type']]?.call(beautyMap) ??
        WBUnhandledEvent(beautyMap);
  }

  static final _eventTypeMap = <String, WBEvent Function(Map<String, dynamic>)>{
    "error": WBError.fromJson,
    "navigationError": WBUrlError.fromJson,
    "navigationChange": WBNavigationChange.fromJson
  };
}

sealed class WBUnhandled {
  final Map<String, dynamic> json;

  const WBUnhandled(this.json);

  @override
  String toString() => 'WBUnhandled($json)';
}

class WBUnhandledEvent extends WBUnhandled implements WBEvent {
  const WBUnhandledEvent(super.json);
  @override
  String toString() => 'WBUnhandledEvent($json)';
}

@freezed
class WBError with _$WBError implements WBEvent {
  const factory WBError({
    @JsonKey(name: 'errorType') required String type,
    required int code,
    required String description,
  }) = _WBError;

  factory WBError.fromJson(Map<String, dynamic> json) =>
      _$WBErrorFromJson(json);
}

@freezed
class WBUrlError with _$WBUrlError implements WBEvent {
  const factory WBUrlError({
    required String url,
    @JsonKey(name: 'errorType') required String type,
    required int code,
    required String description,
  }) = _WBUrlError;

  factory WBUrlError.fromJson(Map<String, dynamic> json) =>
      _$WBUrlErrorFromJson(json);
}

sealed class WBNavigationChange implements WBEvent {
  factory WBNavigationChange.fromJson(Map<String, dynamic> json) =>
      _navigationTypeMap[json['navigationType']!]?.call(json) ??
      WBNavigationUnhandled(json);

  static final _navigationTypeMap =
      <String, WBNavigationChange Function(Map<String, dynamic>)>{
    'action': WBNavigationAction.fromJson,
    'response': WBNavigationResponse.fromJson,
  };
}

class WBNavigationUnhandled extends WBUnhandled implements WBNavigationChange {
  const WBNavigationUnhandled(super.json);

  @override
  String toString() => 'WBNavigationUnhandled($json)';
}

@freezed
class WBNavigationAction
    with _$WBNavigationAction
    implements WBNavigationChange {
  const factory WBNavigationAction({
    required String urlAddress,
  }) = _WBNavigationAction;

  factory WBNavigationAction.fromJson(Map<String, dynamic> json) =>
      _$WBNavigationActionFromJson(json);
}

@freezed
class WBNavigationResponse
    with _$WBNavigationResponse
    implements WBNavigationChange {
  const factory WBNavigationResponse({
    required String urlAddress,
  }) = _WBNavigationResponse;

  factory WBNavigationResponse.fromJson(Map<String, dynamic> json) =>
      _$WBNavigationResponseFromJson(json);
}
