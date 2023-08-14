// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Model {
  int get number => throw _privateConstructorUsedError;
  String get moji => throw _privateConstructorUsedError;
  List<int> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModelCopyWith<Model> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCopyWith<$Res> {
  factory $ModelCopyWith(Model value, $Res Function(Model) then) =
      _$ModelCopyWithImpl<$Res, Model>;
  @useResult
  $Res call({int number, String moji, List<int> list});
}

/// @nodoc
class _$ModelCopyWithImpl<$Res, $Val extends Model>
    implements $ModelCopyWith<$Res> {
  _$ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? moji = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      moji: null == moji
          ? _value.moji
          : moji // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelCopyWith<$Res> implements $ModelCopyWith<$Res> {
  factory _$$_ModelCopyWith(_$_Model value, $Res Function(_$_Model) then) =
      __$$_ModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String moji, List<int> list});
}

/// @nodoc
class __$$_ModelCopyWithImpl<$Res> extends _$ModelCopyWithImpl<$Res, _$_Model>
    implements _$$_ModelCopyWith<$Res> {
  __$$_ModelCopyWithImpl(_$_Model _value, $Res Function(_$_Model) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? moji = null,
    Object? list = null,
  }) {
    return _then(_$_Model(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      moji: null == moji
          ? _value.moji
          : moji // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_Model implements _Model {
  const _$_Model(
      {this.number = 0,
      this.moji = 'ssss',
      final List<int> list = const [0, 0, 0]})
      : _list = list;

  @override
  @JsonKey()
  final int number;
  @override
  @JsonKey()
  final String moji;
  final List<int> _list;
  @override
  @JsonKey()
  List<int> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'Model(number: $number, moji: $moji, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Model &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.moji, moji) || other.moji == moji) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, number, moji, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelCopyWith<_$_Model> get copyWith =>
      __$$_ModelCopyWithImpl<_$_Model>(this, _$identity);
}

abstract class _Model implements Model {
  const factory _Model(
      {final int number, final String moji, final List<int> list}) = _$_Model;

  @override
  int get number;
  @override
  String get moji;
  @override
  List<int> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ModelCopyWith<_$_Model> get copyWith =>
      throw _privateConstructorUsedError;
}
