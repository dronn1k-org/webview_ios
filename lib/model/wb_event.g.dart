// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wb_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WBError _$$_WBErrorFromJson(Map<String, dynamic> json) => _$_WBError(
      type: json['errorType'] as String,
      code: json['code'] as int,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_WBErrorToJson(_$_WBError instance) =>
    <String, dynamic>{
      'errorType': instance.type,
      'code': instance.code,
      'description': instance.description,
    };

_$_WBUrlError _$$_WBUrlErrorFromJson(Map<String, dynamic> json) =>
    _$_WBUrlError(
      url: json['url'] as String,
      type: json['errorType'] as String,
      code: json['code'] as int,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_WBUrlErrorToJson(_$_WBUrlError instance) =>
    <String, dynamic>{
      'url': instance.url,
      'errorType': instance.type,
      'code': instance.code,
      'description': instance.description,
    };

_$_WBNavigationAction _$$_WBNavigationActionFromJson(
        Map<String, dynamic> json) =>
    _$_WBNavigationAction(
      urlAddress: json['urlAddress'] as String,
    );

Map<String, dynamic> _$$_WBNavigationActionToJson(
        _$_WBNavigationAction instance) =>
    <String, dynamic>{
      'urlAddress': instance.urlAddress,
    };

_$_WBNavigationResponse _$$_WBNavigationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_WBNavigationResponse(
      urlAddress: json['urlAddress'] as String,
    );

Map<String, dynamic> _$$_WBNavigationResponseToJson(
        _$_WBNavigationResponse instance) =>
    <String, dynamic>{
      'urlAddress': instance.urlAddress,
    };
