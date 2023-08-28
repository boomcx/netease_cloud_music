// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannerEntity _$BannerEntityFromJson(Map<String, dynamic> json) {
  return _BannerEntity.fromJson(json);
}

/// @nodoc
mixin _$BannerEntity {
  String get pic => throw _privateConstructorUsedError;
  String get typeTitle => throw _privateConstructorUsedError;
  @JsonAlwaysColor()
  Color get titleColor => throw _privateConstructorUsedError;
  String get bannerId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerEntityCopyWith<BannerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerEntityCopyWith<$Res> {
  factory $BannerEntityCopyWith(
          BannerEntity value, $Res Function(BannerEntity) then) =
      _$BannerEntityCopyWithImpl<$Res, BannerEntity>;
  @useResult
  $Res call(
      {String pic,
      String typeTitle,
      @JsonAlwaysColor() Color titleColor,
      String bannerId,
      String url});
}

/// @nodoc
class _$BannerEntityCopyWithImpl<$Res, $Val extends BannerEntity>
    implements $BannerEntityCopyWith<$Res> {
  _$BannerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pic = null,
    Object? typeTitle = null,
    Object? titleColor = null,
    Object? bannerId = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      pic: null == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String,
      typeTitle: null == typeTitle
          ? _value.typeTitle
          : typeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      titleColor: null == titleColor
          ? _value.titleColor
          : titleColor // ignore: cast_nullable_to_non_nullable
              as Color,
      bannerId: null == bannerId
          ? _value.bannerId
          : bannerId // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BannerEntityCopyWith<$Res>
    implements $BannerEntityCopyWith<$Res> {
  factory _$$_BannerEntityCopyWith(
          _$_BannerEntity value, $Res Function(_$_BannerEntity) then) =
      __$$_BannerEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pic,
      String typeTitle,
      @JsonAlwaysColor() Color titleColor,
      String bannerId,
      String url});
}

/// @nodoc
class __$$_BannerEntityCopyWithImpl<$Res>
    extends _$BannerEntityCopyWithImpl<$Res, _$_BannerEntity>
    implements _$$_BannerEntityCopyWith<$Res> {
  __$$_BannerEntityCopyWithImpl(
      _$_BannerEntity _value, $Res Function(_$_BannerEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pic = null,
    Object? typeTitle = null,
    Object? titleColor = null,
    Object? bannerId = null,
    Object? url = null,
  }) {
    return _then(_$_BannerEntity(
      pic: null == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String,
      typeTitle: null == typeTitle
          ? _value.typeTitle
          : typeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      titleColor: null == titleColor
          ? _value.titleColor
          : titleColor // ignore: cast_nullable_to_non_nullable
              as Color,
      bannerId: null == bannerId
          ? _value.bannerId
          : bannerId // ignore: cast_nullable_to_non_nullable
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
class _$_BannerEntity implements _BannerEntity {
  const _$_BannerEntity(
      {this.pic = '',
      this.typeTitle = '',
      @JsonAlwaysColor() this.titleColor = Colors.black,
      this.bannerId = '',
      this.url = ''});

  factory _$_BannerEntity.fromJson(Map<String, dynamic> json) =>
      _$$_BannerEntityFromJson(json);

  @override
  @JsonKey()
  final String pic;
  @override
  @JsonKey()
  final String typeTitle;
  @override
  @JsonKey()
  @JsonAlwaysColor()
  final Color titleColor;
  @override
  @JsonKey()
  final String bannerId;
  @override
  @JsonKey()
  final String url;

  @override
  String toString() {
    return 'BannerEntity(pic: $pic, typeTitle: $typeTitle, titleColor: $titleColor, bannerId: $bannerId, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannerEntity &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.typeTitle, typeTitle) ||
                other.typeTitle == typeTitle) &&
            (identical(other.titleColor, titleColor) ||
                other.titleColor == titleColor) &&
            (identical(other.bannerId, bannerId) ||
                other.bannerId == bannerId) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pic, typeTitle, titleColor, bannerId, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannerEntityCopyWith<_$_BannerEntity> get copyWith =>
      __$$_BannerEntityCopyWithImpl<_$_BannerEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerEntityToJson(
      this,
    );
  }
}

abstract class _BannerEntity implements BannerEntity {
  const factory _BannerEntity(
      {final String pic,
      final String typeTitle,
      @JsonAlwaysColor() final Color titleColor,
      final String bannerId,
      final String url}) = _$_BannerEntity;

  factory _BannerEntity.fromJson(Map<String, dynamic> json) =
      _$_BannerEntity.fromJson;

  @override
  String get pic;
  @override
  String get typeTitle;
  @override
  @JsonAlwaysColor()
  Color get titleColor;
  @override
  String get bannerId;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_BannerEntityCopyWith<_$_BannerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
