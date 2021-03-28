// GENERATED CODE - DO NOT MODIFY BY HAND

part of cart_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartItem> _$cartItemSerializer = new _$CartItemSerializer();

class _$CartItemSerializer implements StructuredSerializer<CartItem> {
  @override
  final Iterable<Type> types = const [CartItem, _$CartItem];
  @override
  final String wireName = 'CartItem';

  @override
  Iterable<Object> serialize(Serializers serializers, CartItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.gift;
    if (value != null) {
      result
        ..add('gift')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ProductModel)));
    }
    value = object.giftColor;
    if (value != null) {
      result
        ..add('gift_color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ColorModel)));
    }
    value = object.wrap;
    if (value != null) {
      result
        ..add('wrap')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ProductModel)));
    }
    value = object.wrapColor;
    if (value != null) {
      result
        ..add('wrap_color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ColorModel)));
    }
    return result;
  }

  @override
  CartItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'gift':
          result.gift.replace(serializers.deserialize(value,
              specifiedType: const FullType(ProductModel)) as ProductModel);
          break;
        case 'gift_color':
          result.giftColor.replace(serializers.deserialize(value,
              specifiedType: const FullType(ColorModel)) as ColorModel);
          break;
        case 'wrap':
          result.wrap.replace(serializers.deserialize(value,
              specifiedType: const FullType(ProductModel)) as ProductModel);
          break;
        case 'wrap_color':
          result.wrapColor.replace(serializers.deserialize(value,
              specifiedType: const FullType(ColorModel)) as ColorModel);
          break;
      }
    }

    return result.build();
  }
}

class _$CartItem extends CartItem {
  @override
  final ProductModel gift;
  @override
  final ColorModel giftColor;
  @override
  final ProductModel wrap;
  @override
  final ColorModel wrapColor;

  factory _$CartItem([void Function(CartItemBuilder) updates]) =>
      (new CartItemBuilder()..update(updates)).build();

  _$CartItem._({this.gift, this.giftColor, this.wrap, this.wrapColor})
      : super._();

  @override
  CartItem rebuild(void Function(CartItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartItemBuilder toBuilder() => new CartItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartItem &&
        gift == other.gift &&
        giftColor == other.giftColor &&
        wrap == other.wrap &&
        wrapColor == other.wrapColor;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, gift.hashCode), giftColor.hashCode), wrap.hashCode),
        wrapColor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartItem')
          ..add('gift', gift)
          ..add('giftColor', giftColor)
          ..add('wrap', wrap)
          ..add('wrapColor', wrapColor))
        .toString();
  }
}

class CartItemBuilder implements Builder<CartItem, CartItemBuilder> {
  _$CartItem _$v;

  ProductModelBuilder _gift;
  ProductModelBuilder get gift => _$this._gift ??= new ProductModelBuilder();
  set gift(ProductModelBuilder gift) => _$this._gift = gift;

  ColorModelBuilder _giftColor;
  ColorModelBuilder get giftColor =>
      _$this._giftColor ??= new ColorModelBuilder();
  set giftColor(ColorModelBuilder giftColor) => _$this._giftColor = giftColor;

  ProductModelBuilder _wrap;
  ProductModelBuilder get wrap => _$this._wrap ??= new ProductModelBuilder();
  set wrap(ProductModelBuilder wrap) => _$this._wrap = wrap;

  ColorModelBuilder _wrapColor;
  ColorModelBuilder get wrapColor =>
      _$this._wrapColor ??= new ColorModelBuilder();
  set wrapColor(ColorModelBuilder wrapColor) => _$this._wrapColor = wrapColor;

  CartItemBuilder();

  CartItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gift = $v.gift?.toBuilder();
      _giftColor = $v.giftColor?.toBuilder();
      _wrap = $v.wrap?.toBuilder();
      _wrapColor = $v.wrapColor?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartItem;
  }

  @override
  void update(void Function(CartItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CartItem build() {
    _$CartItem _$result;
    try {
      _$result = _$v ??
          new _$CartItem._(
              gift: _gift?.build(),
              giftColor: _giftColor?.build(),
              wrap: _wrap?.build(),
              wrapColor: _wrapColor?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'gift';
        _gift?.build();
        _$failedField = 'giftColor';
        _giftColor?.build();
        _$failedField = 'wrap';
        _wrap?.build();
        _$failedField = 'wrapColor';
        _wrapColor?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CartItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
