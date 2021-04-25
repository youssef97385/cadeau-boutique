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
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
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
  @override
  final int id;
  @override
  final String price;

  factory _$SizeModel([void Function(SizeModelBuilder) updates]) =>
      (new SizeModelBuilder()..update(updates)).build();

  _$SizeModel._({this.size, this.id, this.price}) : super._() {
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
    return other is SizeModel &&
        size == other.size &&
        id == other.id &&
        price == other.price;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, size.hashCode), id.hashCode), price.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SizeModel')
          ..add('size', size)
          ..add('id', id)
          ..add('price', price))
        .toString();
  }
}

class SizeModelBuilder implements Builder<SizeModel, SizeModelBuilder> {
  _$SizeModel _$v;

  String _size;
  String get size => _$this._size;
  set size(String size) => _$this._size = size;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  SizeModelBuilder();

  SizeModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _size = $v.size;
      _id = $v.id;
      _price = $v.price;
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
                size, 'SizeModel', 'size'),
            id: id,
            price: price);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
