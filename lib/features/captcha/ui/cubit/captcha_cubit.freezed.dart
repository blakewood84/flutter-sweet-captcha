// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'captcha_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CaptchaState {
  Options? get targetOption => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CaptchaStateCopyWith<CaptchaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaptchaStateCopyWith<$Res> {
  factory $CaptchaStateCopyWith(
          CaptchaState value, $Res Function(CaptchaState) then) =
      _$CaptchaStateCopyWithImpl<$Res, CaptchaState>;
  @useResult
  $Res call({Options? targetOption, bool isVerified});
}

/// @nodoc
class _$CaptchaStateCopyWithImpl<$Res, $Val extends CaptchaState>
    implements $CaptchaStateCopyWith<$Res> {
  _$CaptchaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetOption = freezed,
    Object? isVerified = null,
  }) {
    return _then(_value.copyWith(
      targetOption: freezed == targetOption
          ? _value.targetOption
          : targetOption // ignore: cast_nullable_to_non_nullable
              as Options?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CaptchaStateCopyWith<$Res>
    implements $CaptchaStateCopyWith<$Res> {
  factory _$$_CaptchaStateCopyWith(
          _$_CaptchaState value, $Res Function(_$_CaptchaState) then) =
      __$$_CaptchaStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Options? targetOption, bool isVerified});
}

/// @nodoc
class __$$_CaptchaStateCopyWithImpl<$Res>
    extends _$CaptchaStateCopyWithImpl<$Res, _$_CaptchaState>
    implements _$$_CaptchaStateCopyWith<$Res> {
  __$$_CaptchaStateCopyWithImpl(
      _$_CaptchaState _value, $Res Function(_$_CaptchaState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetOption = freezed,
    Object? isVerified = null,
  }) {
    return _then(_$_CaptchaState(
      targetOption: freezed == targetOption
          ? _value.targetOption
          : targetOption // ignore: cast_nullable_to_non_nullable
              as Options?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CaptchaState implements _CaptchaState {
  const _$_CaptchaState({this.targetOption, required this.isVerified});

  @override
  final Options? targetOption;
  @override
  final bool isVerified;

  @override
  String toString() {
    return 'CaptchaState(targetOption: $targetOption, isVerified: $isVerified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CaptchaState &&
            (identical(other.targetOption, targetOption) ||
                other.targetOption == targetOption) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @override
  int get hashCode => Object.hash(runtimeType, targetOption, isVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CaptchaStateCopyWith<_$_CaptchaState> get copyWith =>
      __$$_CaptchaStateCopyWithImpl<_$_CaptchaState>(this, _$identity);
}

abstract class _CaptchaState implements CaptchaState {
  const factory _CaptchaState(
      {final Options? targetOption,
      required final bool isVerified}) = _$_CaptchaState;

  @override
  Options? get targetOption;
  @override
  bool get isVerified;
  @override
  @JsonKey(ignore: true)
  _$$_CaptchaStateCopyWith<_$_CaptchaState> get copyWith =>
      throw _privateConstructorUsedError;
}
