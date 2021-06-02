// GENERATED CODE - DO NOT MODIFY BY HAND

part of gift_size;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GiftSize> _$giftSizeSerializer = new _$GiftSizeSerializer();

class _$GiftSizeSerializer implements StructuredSerializer<GiftSize> {
  @override
  final Iterable<Type> types = const [GiftSize, _$GiftSize];
  @override
  final String wireName = 'GiftSize';

  @override
  Iterable<Object> serialize(Serializers serializers, GiftSize object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
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
  GiftSize deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GiftSizeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GiftSize extends GiftSize {
  @override
  final String price;

  factory _$GiftSize([void Function(GiftSizeBuilder) updates]) =>
      (new GiftSizeBuilder()..update(updates)).build();

  _$GiftSize._({this.price}) : super._();

  @override
  GiftSize rebuild(void Function(GiftSizeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GiftSizeBuilder toBuilder() => new GiftSizeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GiftSize && price == other.price;
  }

  @override
  int get hashCode {
    return $jf($jc(0, price.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GiftSize')..add('price', price))
        .toString();
  }
}

class GiftSizeBuilder implements Builder<GiftSize, GiftSizeBuilder> {
  _$GiftSize _$v;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  GiftSizeBuilder();

  GiftSizeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _price = $v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GiftSize other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GiftSize;
  }

  @override
  void update(void Function(GiftSizeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GiftSize build() {
    final _$result = _$v ?? new _$GiftSize._(price: price);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
