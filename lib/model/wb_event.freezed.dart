// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wb_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WBError _$WBErrorFromJson(Map<String, dynamic> json) {
  return _WBError.fromJson(json);
}

/// @nodoc
mixin _$WBError {
  @JsonKey(name: 'errorType')
  String get type => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WBErrorCopyWith<WBError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WBErrorCopyWith<$Res> {
  factory $WBErrorCopyWith(WBError value, $Res Function(WBError) then) =
      _$WBErrorCopyWithImpl<$Res, WBError>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errorType') String type, int code, String description});
}

/// @nodoc
class _$WBErrorCopyWithImpl<$Res, $Val extends WBError>
    implements $WBErrorCopyWith<$Res> {
  _$WBErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WBErrorCopyWith<$Res> implements $WBErrorCopyWith<$Res> {
  factory _$$_WBErrorCopyWith(
          _$_WBError value, $Res Function(_$_WBError) then) =
      __$$_WBErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errorType') String type, int code, String description});
}

/// @nodoc
class __$$_WBErrorCopyWithImpl<$Res>
    extends _$WBErrorCopyWithImpl<$Res, _$_WBError>
    implements _$$_WBErrorCopyWith<$Res> {
  __$$_WBErrorCopyWithImpl(_$_WBError _value, $Res Function(_$_WBError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_$_WBError(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WBError implements _WBError {
  const _$_WBError(
      {@JsonKey(name: 'errorType') required this.type,
      required this.code,
      required this.description});

  factory _$_WBError.fromJson(Map<String, dynamic> json) =>
      _$$_WBErrorFromJson(json);

  @override
  @JsonKey(name: 'errorType')
  final String type;
  @override
  final int code;
  @override
  final String description;

  @override
  String toString() {
    return 'WBError(type: $type, code: $code, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WBError &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, code, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WBErrorCopyWith<_$_WBError> get copyWith =>
      __$$_WBErrorCopyWithImpl<_$_WBError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WBErrorToJson(
      this,
    );
  }
}

abstract class _WBError implements WBError {
  const factory _WBError(
      {@JsonKey(name: 'errorType') required final String type,
      required final int code,
      required final String description}) = _$_WBError;

  factory _WBError.fromJson(Map<String, dynamic> json) = _$_WBError.fromJson;

  @override
  @JsonKey(name: 'errorType')
  String get type;
  @override
  int get code;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_WBErrorCopyWith<_$_WBError> get copyWith =>
      throw _privateConstructorUsedError;
}

WBUrlError _$WBUrlErrorFromJson(Map<String, dynamic> json) {
  return _WBUrlError.fromJson(json);
}

/// @nodoc
mixin _$WBUrlError {
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'errorType')
  String get type => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WBUrlErrorCopyWith<WBUrlError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WBUrlErrorCopyWith<$Res> {
  factory $WBUrlErrorCopyWith(
          WBUrlError value, $Res Function(WBUrlError) then) =
      _$WBUrlErrorCopyWithImpl<$Res, WBUrlError>;
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: 'errorType') String type,
      int code,
      String description});
}

/// @nodoc
class _$WBUrlErrorCopyWithImpl<$Res, $Val extends WBUrlError>
    implements $WBUrlErrorCopyWith<$Res> {
  _$WBUrlErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WBUrlErrorCopyWith<$Res>
    implements $WBUrlErrorCopyWith<$Res> {
  factory _$$_WBUrlErrorCopyWith(
          _$_WBUrlError value, $Res Function(_$_WBUrlError) then) =
      __$$_WBUrlErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: 'errorType') String type,
      int code,
      String description});
}

/// @nodoc
class __$$_WBUrlErrorCopyWithImpl<$Res>
    extends _$WBUrlErrorCopyWithImpl<$Res, _$_WBUrlError>
    implements _$$_WBUrlErrorCopyWith<$Res> {
  __$$_WBUrlErrorCopyWithImpl(
      _$_WBUrlError _value, $Res Function(_$_WBUrlError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_$_WBUrlError(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WBUrlError implements _WBUrlError {
  const _$_WBUrlError(
      {required this.url,
      @JsonKey(name: 'errorType') required this.type,
      required this.code,
      required this.description});

  factory _$_WBUrlError.fromJson(Map<String, dynamic> json) =>
      _$$_WBUrlErrorFromJson(json);

  @override
  final String url;
  @override
  @JsonKey(name: 'errorType')
  final String type;
  @override
  final int code;
  @override
  final String description;

  @override
  String toString() {
    return 'WBUrlError(url: $url, type: $type, code: $code, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WBUrlError &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, type, code, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WBUrlErrorCopyWith<_$_WBUrlError> get copyWith =>
      __$$_WBUrlErrorCopyWithImpl<_$_WBUrlError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WBUrlErrorToJson(
      this,
    );
  }
}

abstract class _WBUrlError implements WBUrlError {
  const factory _WBUrlError(
      {required final String url,
      @JsonKey(name: 'errorType') required final String type,
      required final int code,
      required final String description}) = _$_WBUrlError;

  factory _WBUrlError.fromJson(Map<String, dynamic> json) =
      _$_WBUrlError.fromJson;

  @override
  String get url;
  @override
  @JsonKey(name: 'errorType')
  String get type;
  @override
  int get code;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_WBUrlErrorCopyWith<_$_WBUrlError> get copyWith =>
      throw _privateConstructorUsedError;
}

WBNavigationAction _$WBNavigationActionFromJson(Map<String, dynamic> json) {
  return _WBNavigationAction.fromJson(json);
}

/// @nodoc
mixin _$WBNavigationAction {
  String get urlAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WBNavigationActionCopyWith<WBNavigationAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WBNavigationActionCopyWith<$Res> {
  factory $WBNavigationActionCopyWith(
          WBNavigationAction value, $Res Function(WBNavigationAction) then) =
      _$WBNavigationActionCopyWithImpl<$Res, WBNavigationAction>;
  @useResult
  $Res call({String urlAddress});
}

/// @nodoc
class _$WBNavigationActionCopyWithImpl<$Res, $Val extends WBNavigationAction>
    implements $WBNavigationActionCopyWith<$Res> {
  _$WBNavigationActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlAddress = null,
  }) {
    return _then(_value.copyWith(
      urlAddress: null == urlAddress
          ? _value.urlAddress
          : urlAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WBNavigationActionCopyWith<$Res>
    implements $WBNavigationActionCopyWith<$Res> {
  factory _$$_WBNavigationActionCopyWith(_$_WBNavigationAction value,
          $Res Function(_$_WBNavigationAction) then) =
      __$$_WBNavigationActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String urlAddress});
}

/// @nodoc
class __$$_WBNavigationActionCopyWithImpl<$Res>
    extends _$WBNavigationActionCopyWithImpl<$Res, _$_WBNavigationAction>
    implements _$$_WBNavigationActionCopyWith<$Res> {
  __$$_WBNavigationActionCopyWithImpl(
      _$_WBNavigationAction _value, $Res Function(_$_WBNavigationAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlAddress = null,
  }) {
    return _then(_$_WBNavigationAction(
      urlAddress: null == urlAddress
          ? _value.urlAddress
          : urlAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WBNavigationAction implements _WBNavigationAction {
  const _$_WBNavigationAction({required this.urlAddress});

  factory _$_WBNavigationAction.fromJson(Map<String, dynamic> json) =>
      _$$_WBNavigationActionFromJson(json);

  @override
  final String urlAddress;

  @override
  String toString() {
    return 'WBNavigationAction(urlAddress: $urlAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WBNavigationAction &&
            (identical(other.urlAddress, urlAddress) ||
                other.urlAddress == urlAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, urlAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WBNavigationActionCopyWith<_$_WBNavigationAction> get copyWith =>
      __$$_WBNavigationActionCopyWithImpl<_$_WBNavigationAction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WBNavigationActionToJson(
      this,
    );
  }
}

abstract class _WBNavigationAction implements WBNavigationAction {
  const factory _WBNavigationAction({required final String urlAddress}) =
      _$_WBNavigationAction;

  factory _WBNavigationAction.fromJson(Map<String, dynamic> json) =
      _$_WBNavigationAction.fromJson;

  @override
  String get urlAddress;
  @override
  @JsonKey(ignore: true)
  _$$_WBNavigationActionCopyWith<_$_WBNavigationAction> get copyWith =>
      throw _privateConstructorUsedError;
}

WBNavigationResponse _$WBNavigationResponseFromJson(Map<String, dynamic> json) {
  return _WBNavigationResponse.fromJson(json);
}

/// @nodoc
mixin _$WBNavigationResponse {
  String get urlAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WBNavigationResponseCopyWith<WBNavigationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WBNavigationResponseCopyWith<$Res> {
  factory $WBNavigationResponseCopyWith(WBNavigationResponse value,
          $Res Function(WBNavigationResponse) then) =
      _$WBNavigationResponseCopyWithImpl<$Res, WBNavigationResponse>;
  @useResult
  $Res call({String urlAddress});
}

/// @nodoc
class _$WBNavigationResponseCopyWithImpl<$Res,
        $Val extends WBNavigationResponse>
    implements $WBNavigationResponseCopyWith<$Res> {
  _$WBNavigationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlAddress = null,
  }) {
    return _then(_value.copyWith(
      urlAddress: null == urlAddress
          ? _value.urlAddress
          : urlAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WBNavigationResponseCopyWith<$Res>
    implements $WBNavigationResponseCopyWith<$Res> {
  factory _$$_WBNavigationResponseCopyWith(_$_WBNavigationResponse value,
          $Res Function(_$_WBNavigationResponse) then) =
      __$$_WBNavigationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String urlAddress});
}

/// @nodoc
class __$$_WBNavigationResponseCopyWithImpl<$Res>
    extends _$WBNavigationResponseCopyWithImpl<$Res, _$_WBNavigationResponse>
    implements _$$_WBNavigationResponseCopyWith<$Res> {
  __$$_WBNavigationResponseCopyWithImpl(_$_WBNavigationResponse _value,
      $Res Function(_$_WBNavigationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlAddress = null,
  }) {
    return _then(_$_WBNavigationResponse(
      urlAddress: null == urlAddress
          ? _value.urlAddress
          : urlAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WBNavigationResponse implements _WBNavigationResponse {
  const _$_WBNavigationResponse({required this.urlAddress});

  factory _$_WBNavigationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WBNavigationResponseFromJson(json);

  @override
  final String urlAddress;

  @override
  String toString() {
    return 'WBNavigationResponse(urlAddress: $urlAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WBNavigationResponse &&
            (identical(other.urlAddress, urlAddress) ||
                other.urlAddress == urlAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, urlAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WBNavigationResponseCopyWith<_$_WBNavigationResponse> get copyWith =>
      __$$_WBNavigationResponseCopyWithImpl<_$_WBNavigationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WBNavigationResponseToJson(
      this,
    );
  }
}

abstract class _WBNavigationResponse implements WBNavigationResponse {
  const factory _WBNavigationResponse({required final String urlAddress}) =
      _$_WBNavigationResponse;

  factory _WBNavigationResponse.fromJson(Map<String, dynamic> json) =
      _$_WBNavigationResponse.fromJson;

  @override
  String get urlAddress;
  @override
  @JsonKey(ignore: true)
  _$$_WBNavigationResponseCopyWith<_$_WBNavigationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
