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
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
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
    value = object.totalPrice;
    if (value != null) {
      result
        ..add('total_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.giftSizeId;
    if (value != null) {
      result
        ..add('gift_size_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.giftSize;
    if (value != null) {
      result
        ..add('gift_size')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GiftSize)));
    }
    value = object.wrapSizeId;
    if (value != null) {
      result
        ..add('wrap_size_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
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
        case 'total_price':
          result.totalPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'gift_size_id':
          result.giftSizeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'gift_size':
          result.giftSize.replace(serializers.deserialize(value,
              specifiedType: const FullType(GiftSize)) as GiftSize);
          break;
        case 'wrap_size_id':
          result.wrapSizeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CartItem extends CartItem {
  @override
  final int id;
  @override
  final ProductModel gift;
  @override
  final ColorModel giftColor;
  @override
  final ProductModel wrap;
  @override
  final ColorModel wrapColor;
  @override
  final int totalPrice;
  @override
  final int giftSizeId;
  @override
  final GiftSize giftSize;
  @override
  final int wrapSizeId;

  factory _$CartItem([void Function(CartItemBuilder) updates]) =>
      (new CartItemBuilder()..update(updates)).build();

  _$CartItem._(
      {this.id,
      this.gift,
      this.giftColor,
      this.wrap,
      this.wrapColor,
      this.totalPrice,
      this.giftSizeId,
      this.giftSize,
      this.wrapSizeId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CartItem', 'id');
  }

  @override
  CartItem rebuild(void Function(CartItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartItemBuilder toBuilder() => new CartItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartItem &&
        id == other.id &&
        gift == other.gift &&
        giftColor == other.giftColor &&
        wrap == other.wrap &&
        wrapColor == other.wrapColor &&
        totalPrice == other.totalPrice &&
        giftSizeId == other.giftSizeId &&
        giftSize == other.giftSize &&
        wrapSizeId == other.wrapSizeId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), gift.hashCode),
                                giftColor.hashCode),
                            wrap.hashCode),
                        wrapColor.hashCode),
                    totalPrice.hashCode),
                giftSizeId.hashCode),
            giftSize.hashCode),
        wrapSizeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartItem')
          ..add('id', id)
          ..add('gift', gift)
          ..add('giftColor', giftColor)
          ..add('wrap', wrap)
          ..add('wrapColor', wrapColor)
          ..add('totalPrice', totalPrice)
          ..add('giftSizeId', giftSizeId)
          ..add('giftSize', giftSize)
          ..add('wrapSizeId', wrapSizeId))
        .toString();
  }
}

class CartItemBuilder implements Builder<CartItem, CartItemBuilder> {
  _$CartItem _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

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

  int _totalPrice;
  int get totalPrice => _$this._totalPrice;
  set totalPrice(int totalPrice) => _$this._totalPrice = totalPrice;

  int _giftSizeId;
  int get giftSizeId => _$this._giftSizeId;
  set giftSizeId(int giftSizeId) => _$this._giftSizeId = giftSizeId;

  GiftSizeBuilder _giftSize;
  GiftSizeBuilder get giftSize => _$this._giftSize ??= new GiftSizeBuilder();
  set giftSize(GiftSizeBuilder giftSize) => _$this._giftSize = giftSize;

  int _wrapSizeId;
  int get wrapSizeId => _$this._wrapSizeId;
  set wrapSizeId(int wrapSizeId) => _$this._wrapSizeId = wrapSizeId;

  CartItemBuilder();

  CartItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _gift = $v.gift?.toBuilder();
      _giftColor = $v.giftColor?.toBuilder();
      _wrap = $v.wrap?.toBuilder();
      _wrapColor = $v.wrapColor?.toBuilder();
      _totalPrice = $v.totalPrice;
      _giftSizeId = $v.giftSizeId;
      _giftSize = $v.giftSize?.toBuilder();
      _wrapSizeId = $v.wrapSizeId;
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
              id: BuiltValueNullFieldError.checkNotNull(id, 'CartItem', 'id'),
              gift: _gift?.build(),
              giftColor: _giftColor?.build(),
              wrap: _wrap?.build(),
              wrapColor: _wrapColor?.build(),
              totalPrice: totalPrice,
              giftSizeId: giftSizeId,
              giftSize: _giftSize?.build(),
              wrapSizeId: wrapSizeId);
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

        _$failedField = 'giftSize';
        _giftSize?.build();
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
