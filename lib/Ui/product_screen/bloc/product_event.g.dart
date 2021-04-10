// GENERATED CODE - DO NOT MODIFY BY HAND

part of product_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetProduct extends GetProduct {
  @override
  final int id;

  factory _$GetProduct([void Function(GetProductBuilder) updates]) =>
      (new GetProductBuilder()..update(updates)).build();

  _$GetProduct._({this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GetProduct', 'id');
  }

  @override
  GetProduct rebuild(void Function(GetProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProductBuilder toBuilder() => new GetProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProduct && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetProduct')..add('id', id))
        .toString();
  }
}

class GetProductBuilder implements Builder<GetProduct, GetProductBuilder> {
  _$GetProduct _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  GetProductBuilder();

  GetProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetProduct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetProduct;
  }

  @override
  void update(void Function(GetProductBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetProduct build() {
    final _$result = _$v ??
        new _$GetProduct._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'GetProduct', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$AddToFavourite extends AddToFavourite {
  @override
  final int id;

  factory _$AddToFavourite([void Function(AddToFavouriteBuilder) updates]) =>
      (new AddToFavouriteBuilder()..update(updates)).build();

  _$AddToFavourite._({this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'AddToFavourite', 'id');
  }

  @override
  AddToFavourite rebuild(void Function(AddToFavouriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToFavouriteBuilder toBuilder() =>
      new AddToFavouriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToFavourite && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddToFavourite')..add('id', id))
        .toString();
  }
}

class AddToFavouriteBuilder
    implements Builder<AddToFavourite, AddToFavouriteBuilder> {
  _$AddToFavourite _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  AddToFavouriteBuilder();

  AddToFavouriteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToFavourite other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddToFavourite;
  }

  @override
  void update(void Function(AddToFavouriteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToFavourite build() {
    final _$result = _$v ??
        new _$AddToFavourite._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'AddToFavourite', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$AddToCart extends AddToCart {
  @override
  final int giftId;
  @override
  final int giftColorId;
  @override
  final int wrapId;
  @override
  final int wrapColorId;

  factory _$AddToCart([void Function(AddToCartBuilder) updates]) =>
      (new AddToCartBuilder()..update(updates)).build();

  _$AddToCart._({this.giftId, this.giftColorId, this.wrapId, this.wrapColorId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(giftId, 'AddToCart', 'giftId');
  }

  @override
  AddToCart rebuild(void Function(AddToCartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToCartBuilder toBuilder() => new AddToCartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToCart &&
        giftId == other.giftId &&
        giftColorId == other.giftColorId &&
        wrapId == other.wrapId &&
        wrapColorId == other.wrapColorId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, giftId.hashCode), giftColorId.hashCode),
            wrapId.hashCode),
        wrapColorId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddToCart')
          ..add('giftId', giftId)
          ..add('giftColorId', giftColorId)
          ..add('wrapId', wrapId)
          ..add('wrapColorId', wrapColorId))
        .toString();
  }
}

class AddToCartBuilder implements Builder<AddToCart, AddToCartBuilder> {
  _$AddToCart _$v;

  int _giftId;
  int get giftId => _$this._giftId;
  set giftId(int giftId) => _$this._giftId = giftId;

  int _giftColorId;
  int get giftColorId => _$this._giftColorId;
  set giftColorId(int giftColorId) => _$this._giftColorId = giftColorId;

  int _wrapId;
  int get wrapId => _$this._wrapId;
  set wrapId(int wrapId) => _$this._wrapId = wrapId;

  int _wrapColorId;
  int get wrapColorId => _$this._wrapColorId;
  set wrapColorId(int wrapColorId) => _$this._wrapColorId = wrapColorId;

  AddToCartBuilder();

  AddToCartBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _giftId = $v.giftId;
      _giftColorId = $v.giftColorId;
      _wrapId = $v.wrapId;
      _wrapColorId = $v.wrapColorId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToCart other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddToCart;
  }

  @override
  void update(void Function(AddToCartBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToCart build() {
    final _$result = _$v ??
        new _$AddToCart._(
            giftId: BuiltValueNullFieldError.checkNotNull(
                giftId, 'AddToCart', 'giftId'),
            giftColorId: giftColorId,
            wrapId: wrapId,
            wrapColorId: wrapColorId);
    replace(_$result);
    return _$result;
  }
}

class _$GetWrapByGift extends GetWrapByGift {
  @override
  final int giftId;

  factory _$GetWrapByGift([void Function(GetWrapByGiftBuilder) updates]) =>
      (new GetWrapByGiftBuilder()..update(updates)).build();

  _$GetWrapByGift._({this.giftId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(giftId, 'GetWrapByGift', 'giftId');
  }

  @override
  GetWrapByGift rebuild(void Function(GetWrapByGiftBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetWrapByGiftBuilder toBuilder() => new GetWrapByGiftBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetWrapByGift && giftId == other.giftId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, giftId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetWrapByGift')..add('giftId', giftId))
        .toString();
  }
}

class GetWrapByGiftBuilder
    implements Builder<GetWrapByGift, GetWrapByGiftBuilder> {
  _$GetWrapByGift _$v;

  int _giftId;
  int get giftId => _$this._giftId;
  set giftId(int giftId) => _$this._giftId = giftId;

  GetWrapByGiftBuilder();

  GetWrapByGiftBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _giftId = $v.giftId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetWrapByGift other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetWrapByGift;
  }

  @override
  void update(void Function(GetWrapByGiftBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetWrapByGift build() {
    final _$result = _$v ??
        new _$GetWrapByGift._(
            giftId: BuiltValueNullFieldError.checkNotNull(
                giftId, 'GetWrapByGift', 'giftId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
