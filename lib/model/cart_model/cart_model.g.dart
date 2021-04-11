// GENERATED CODE - DO NOT MODIFY BY HAND

part of cart_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartModel> _$cartModelSerializer = new _$CartModelSerializer();

class _$CartModelSerializer implements StructuredSerializer<CartModel> {
  @override
  final Iterable<Type> types = const [CartModel, _$CartModel];
  @override
  final String wireName = 'CartModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CartModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.songLink;
    if (value != null) {
      result
        ..add('song_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.songPrice;
    if (value != null) {
      result
        ..add('song_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalPrice;
    if (value != null) {
      result
        ..add('total_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.productsPrice;
    if (value != null) {
      result
        ..add('products_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.wrapsPrice;
    if (value != null) {
      result
        ..add('wraps_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.allCartWrapped;
    if (value != null) {
      result
        ..add('wrap_all_cart')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.wrapId;
    if (value != null) {
      result
        ..add('wrap_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.wrapColor;
    if (value != null) {
      result
        ..add('wrap_color')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.globalWrap;
    if (value != null) {
      result
        ..add('global_wrap')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(WrapItem)));
    }
    value = object.globalWrapColor;
    if (value != null) {
      result
        ..add('global_wrap_color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ColorModel)));
    }
    value = object.details;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(CartItem)])));
    }
    return result;
  }

  @override
  CartModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartModelBuilder();

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
        case 'song_link':
          result.songLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'song_price':
          result.songPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_price':
          result.totalPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'products_price':
          result.productsPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'wraps_price':
          result.wrapsPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wrap_all_cart':
          result.allCartWrapped = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'wrap_id':
          result.wrapId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'wrap_color':
          result.wrapColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'global_wrap':
          result.globalWrap.replace(serializers.deserialize(value,
              specifiedType: const FullType(WrapItem)) as WrapItem);
          break;
        case 'global_wrap_color':
          result.globalWrapColor.replace(serializers.deserialize(value,
              specifiedType: const FullType(ColorModel)) as ColorModel);
          break;
        case 'details':
          result.details.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CartItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CartModel extends CartModel {
  @override
  final int id;
  @override
  final String songLink;
  @override
  final int songPrice;
  @override
  final int totalPrice;
  @override
  final int productsPrice;
  @override
  final int wrapsPrice;
  @override
  final String status;
  @override
  final int allCartWrapped;
  @override
  final int wrapId;
  @override
  final int wrapColor;
  @override
  final WrapItem globalWrap;
  @override
  final ColorModel globalWrapColor;
  @override
  final BuiltList<CartItem> details;

  factory _$CartModel([void Function(CartModelBuilder) updates]) =>
      (new CartModelBuilder()..update(updates)).build();

  _$CartModel._(
      {this.id,
      this.songLink,
      this.songPrice,
      this.totalPrice,
      this.productsPrice,
      this.wrapsPrice,
      this.status,
      this.allCartWrapped,
      this.wrapId,
      this.wrapColor,
      this.globalWrap,
      this.globalWrapColor,
      this.details})
      : super._();

  @override
  CartModel rebuild(void Function(CartModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartModelBuilder toBuilder() => new CartModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartModel &&
        id == other.id &&
        songLink == other.songLink &&
        songPrice == other.songPrice &&
        totalPrice == other.totalPrice &&
        productsPrice == other.productsPrice &&
        wrapsPrice == other.wrapsPrice &&
        status == other.status &&
        allCartWrapped == other.allCartWrapped &&
        wrapId == other.wrapId &&
        wrapColor == other.wrapColor &&
        globalWrap == other.globalWrap &&
        globalWrapColor == other.globalWrapColor &&
        details == other.details;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, id.hashCode),
                                                    songLink.hashCode),
                                                songPrice.hashCode),
                                            totalPrice.hashCode),
                                        productsPrice.hashCode),
                                    wrapsPrice.hashCode),
                                status.hashCode),
                            allCartWrapped.hashCode),
                        wrapId.hashCode),
                    wrapColor.hashCode),
                globalWrap.hashCode),
            globalWrapColor.hashCode),
        details.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartModel')
          ..add('id', id)
          ..add('songLink', songLink)
          ..add('songPrice', songPrice)
          ..add('totalPrice', totalPrice)
          ..add('productsPrice', productsPrice)
          ..add('wrapsPrice', wrapsPrice)
          ..add('status', status)
          ..add('allCartWrapped', allCartWrapped)
          ..add('wrapId', wrapId)
          ..add('wrapColor', wrapColor)
          ..add('globalWrap', globalWrap)
          ..add('globalWrapColor', globalWrapColor)
          ..add('details', details))
        .toString();
  }
}

class CartModelBuilder implements Builder<CartModel, CartModelBuilder> {
  _$CartModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _songLink;
  String get songLink => _$this._songLink;
  set songLink(String songLink) => _$this._songLink = songLink;

  int _songPrice;
  int get songPrice => _$this._songPrice;
  set songPrice(int songPrice) => _$this._songPrice = songPrice;

  int _totalPrice;
  int get totalPrice => _$this._totalPrice;
  set totalPrice(int totalPrice) => _$this._totalPrice = totalPrice;

  int _productsPrice;
  int get productsPrice => _$this._productsPrice;
  set productsPrice(int productsPrice) => _$this._productsPrice = productsPrice;

  int _wrapsPrice;
  int get wrapsPrice => _$this._wrapsPrice;
  set wrapsPrice(int wrapsPrice) => _$this._wrapsPrice = wrapsPrice;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  int _allCartWrapped;
  int get allCartWrapped => _$this._allCartWrapped;
  set allCartWrapped(int allCartWrapped) =>
      _$this._allCartWrapped = allCartWrapped;

  int _wrapId;
  int get wrapId => _$this._wrapId;
  set wrapId(int wrapId) => _$this._wrapId = wrapId;

  int _wrapColor;
  int get wrapColor => _$this._wrapColor;
  set wrapColor(int wrapColor) => _$this._wrapColor = wrapColor;

  WrapItemBuilder _globalWrap;
  WrapItemBuilder get globalWrap =>
      _$this._globalWrap ??= new WrapItemBuilder();
  set globalWrap(WrapItemBuilder globalWrap) => _$this._globalWrap = globalWrap;

  ColorModelBuilder _globalWrapColor;
  ColorModelBuilder get globalWrapColor =>
      _$this._globalWrapColor ??= new ColorModelBuilder();
  set globalWrapColor(ColorModelBuilder globalWrapColor) =>
      _$this._globalWrapColor = globalWrapColor;

  ListBuilder<CartItem> _details;
  ListBuilder<CartItem> get details =>
      _$this._details ??= new ListBuilder<CartItem>();
  set details(ListBuilder<CartItem> details) => _$this._details = details;

  CartModelBuilder();

  CartModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _songLink = $v.songLink;
      _songPrice = $v.songPrice;
      _totalPrice = $v.totalPrice;
      _productsPrice = $v.productsPrice;
      _wrapsPrice = $v.wrapsPrice;
      _status = $v.status;
      _allCartWrapped = $v.allCartWrapped;
      _wrapId = $v.wrapId;
      _wrapColor = $v.wrapColor;
      _globalWrap = $v.globalWrap?.toBuilder();
      _globalWrapColor = $v.globalWrapColor?.toBuilder();
      _details = $v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartModel;
  }

  @override
  void update(void Function(CartModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CartModel build() {
    _$CartModel _$result;
    try {
      _$result = _$v ??
          new _$CartModel._(
              id: id,
              songLink: songLink,
              songPrice: songPrice,
              totalPrice: totalPrice,
              productsPrice: productsPrice,
              wrapsPrice: wrapsPrice,
              status: status,
              allCartWrapped: allCartWrapped,
              wrapId: wrapId,
              wrapColor: wrapColor,
              globalWrap: _globalWrap?.build(),
              globalWrapColor: _globalWrapColor?.build(),
              details: _details?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'globalWrap';
        _globalWrap?.build();
        _$failedField = 'globalWrapColor';
        _globalWrapColor?.build();
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CartModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
