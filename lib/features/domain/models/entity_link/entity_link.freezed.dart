// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EntityLink _$EntityLinkFromJson(Map<String, dynamic> json) {
  return _EntityLink.fromJson(json);
}

/// @nodoc
mixin _$EntityLink {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this EntityLink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EntityLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityLinkCopyWith<EntityLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityLinkCopyWith<$Res> {
  factory $EntityLinkCopyWith(
          EntityLink value, $Res Function(EntityLink) then) =
      _$EntityLinkCopyWithImpl<$Res, EntityLink>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$EntityLinkCopyWithImpl<$Res, $Val extends EntityLink>
    implements $EntityLinkCopyWith<$Res> {
  _$EntityLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntityLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityLinkImplCopyWith<$Res>
    implements $EntityLinkCopyWith<$Res> {
  factory _$$EntityLinkImplCopyWith(
          _$EntityLinkImpl value, $Res Function(_$EntityLinkImpl) then) =
      __$$EntityLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$EntityLinkImplCopyWithImpl<$Res>
    extends _$EntityLinkCopyWithImpl<$Res, _$EntityLinkImpl>
    implements _$$EntityLinkImplCopyWith<$Res> {
  __$$EntityLinkImplCopyWithImpl(
      _$EntityLinkImpl _value, $Res Function(_$EntityLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntityLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$EntityLinkImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntityLinkImpl implements _EntityLink {
  const _$EntityLinkImpl({required this.name, required this.url});

  factory _$EntityLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntityLinkImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'EntityLink(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityLinkImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of EntityLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityLinkImplCopyWith<_$EntityLinkImpl> get copyWith =>
      __$$EntityLinkImplCopyWithImpl<_$EntityLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntityLinkImplToJson(
      this,
    );
  }
}

abstract class _EntityLink implements EntityLink {
  const factory _EntityLink(
      {required final String name,
      required final String url}) = _$EntityLinkImpl;

  factory _EntityLink.fromJson(Map<String, dynamic> json) =
      _$EntityLinkImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of EntityLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityLinkImplCopyWith<_$EntityLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
