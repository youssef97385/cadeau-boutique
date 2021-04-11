// GENERATED CODE - DO NOT MODIFY BY HAND

part of favourite_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFavourites extends GetFavourites {
  factory _$GetFavourites([void Function(GetFavouritesBuilder) updates]) =>
      (new GetFavouritesBuilder()..update(updates)).build();

  _$GetFavourites._() : super._();

  @override
  GetFavourites rebuild(void Function(GetFavouritesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFavouritesBuilder toBuilder() => new GetFavouritesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFavourites;
  }

  @override
  int get hashCode {
    return 400498376;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetFavourites').toString();
  }
}

class GetFavouritesBuilder
    implements Builder<GetFavourites, GetFavouritesBuilder> {
  _$GetFavourites _$v;

  GetFavouritesBuilder();

  @override
  void replace(GetFavourites other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFavourites;
  }

  @override
  void update(void Function(GetFavouritesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFavourites build() {
    final _$result = _$v ?? new _$GetFavourites._();
    replace(_$result);
    return _$result;
  }
}

class _$RemoveFavourite extends RemoveFavourite {
  @override
  final int id;

  factory _$RemoveFavourite([void Function(RemoveFavouriteBuilder) updates]) =>
      (new RemoveFavouriteBuilder()..update(updates)).build();

  _$RemoveFavourite._({this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'RemoveFavourite', 'id');
  }

  @override
  RemoveFavourite rebuild(void Function(RemoveFavouriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveFavouriteBuilder toBuilder() =>
      new RemoveFavouriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveFavourite && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveFavourite')..add('id', id))
        .toString();
  }
}

class RemoveFavouriteBuilder
    implements Builder<RemoveFavourite, RemoveFavouriteBuilder> {
  _$RemoveFavourite _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  RemoveFavouriteBuilder();

  RemoveFavouriteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFavourite other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveFavourite;
  }

  @override
  void update(void Function(RemoveFavouriteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveFavourite build() {
    final _$result = _$v ??
        new _$RemoveFavourite._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'RemoveFavourite', 'id'));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
