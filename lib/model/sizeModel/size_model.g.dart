// GENERATED CODE - DO NOT MODIFY BY HAND

part of size_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SizeModel> _$sizeModelSerializer = new _$SizeModelSerializer();

class _$SizeModelSerializer implements StructuredSerializer<SizeModel> {
  @override
  final Iterable<Type> types = const [SizeModel, _$SizeModel];
  @override
  final String wireName = 'SizeModel';

  @override
  Iterable<Object> serialize(Serializers serializers, SizeModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'size',
      serializers.serialize(object.size, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SizeModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SizeModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SizeModel extends SizeModel {
  @override
  final String size;

  factory _$SizeModel([void Function(SizeModelBuilder) updates]) =>
      (new SizeModelBuilder()..update(updates)).build();

  _$SizeModel._({this.size}) : super._() {
    BuiltValueNullFieldError.checkNotNull(size, 'SizeModel', 'size');
  }

  @override
  SizeModel rebuild(void Function(SizeModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SizeModelBuilder toBuilder() => new SizeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SizeModel && size == other.size;
  }

  @override
  int get hashCode {
    return $jf($jc(0, size.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SizeModel')..add('size', size))
        .toString();
  }
}

class SizeModelBuilder implements Builder<SizeModel, SizeModelBuilder> {
  _$SizeModel _$v;

  String _size;
  String get size => _$this._size;
  set size(String size) => _$this._size = size;

  SizeModelBuilder();

  SizeModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _size = $v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SizeModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SizeModel;
  }

  @override
  void update(void Function(SizeModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SizeModel build() {
    final _$result = _$v ??
        new _$SizeModel._(
            size: BuiltValueNullFieldError.checkNotNull(
                size, 'SizeModel', 'size'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
