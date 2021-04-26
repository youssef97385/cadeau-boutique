// GENERATED CODE - DO NOT MODIFY BY HAND

part of wrap_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetWrap extends GetWrap {
  @override
  final int id;

  factory _$GetWrap([void Function(GetWrapBuilder) updates]) =>
      (new GetWrapBuilder()..update(updates)).build();

  _$GetWrap._({this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GetWrap', 'id');
  }

  @override
  GetWrap rebuild(void Function(GetWrapBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetWrapBuilder toBuilder() => new GetWrapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetWrap && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetWrap')..add('id', id)).toString();
  }
}

class GetWrapBuilder implements Builder<GetWrap, GetWrapBuilder> {
  _$GetWrap _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  GetWrapBuilder();

  GetWrapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetWrap other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetWrap;
  }

  @override
  void update(void Function(GetWrapBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetWrap build() {
    final _$result = _$v ??
        new _$GetWrap._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'GetWrap', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$AddToCart extends AddToCart {
  @override
  final int wrapId;
  @override
  final int wrapColorId;

  factory _$AddToCart([void Function(AddToCartBuilder) updates]) =>
      (new AddToCartBuilder()..update(updates)).build();

  _$AddToCart._({this.wrapId, this.wrapColorId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(wrapId, 'AddToCart', 'wrapId');
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
        wrapId == other.wrapId &&
        wrapColorId == other.wrapColorId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, wrapId.hashCode), wrapColorId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddToCart')
          ..add('wrapId', wrapId)
          ..add('wrapColorId', wrapColorId))
        .toString();
  }
}

class AddToCartBuilder implements Builder<AddToCart, AddToCartBuilder> {
  _$AddToCart _$v;

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
            wrapId: BuiltValueNullFieldError.checkNotNull(
                wrapId, 'AddToCart', 'wrapId'),
            wrapColorId: wrapColorId);
    replace(_$result);
    return _$result;
  }
}

class _$AddWrap extends AddWrap {
  @override
  final int wrapId;
  @override
  final int wrapColorId;
  @override
  final int wrapSizeId;

  factory _$AddWrap([void Function(AddWrapBuilder) updates]) =>
      (new AddWrapBuilder()..update(updates)).build();

  _$AddWrap._({this.wrapId, this.wrapColorId, this.wrapSizeId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(wrapId, 'AddWrap', 'wrapId');
  }

  @override
  AddWrap rebuild(void Function(AddWrapBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddWrapBuilder toBuilder() => new AddWrapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddWrap &&
        wrapId == other.wrapId &&
        wrapColorId == other.wrapColorId &&
        wrapSizeId == other.wrapSizeId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, wrapId.hashCode), wrapColorId.hashCode),
        wrapSizeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddWrap')
          ..add('wrapId', wrapId)
          ..add('wrapColorId', wrapColorId)
          ..add('wrapSizeId', wrapSizeId))
        .toString();
  }
}

class AddWrapBuilder implements Builder<AddWrap, AddWrapBuilder> {
  _$AddWrap _$v;

  int _wrapId;
  int get wrapId => _$this._wrapId;
  set wrapId(int wrapId) => _$this._wrapId = wrapId;

  int _wrapColorId;
  int get wrapColorId => _$this._wrapColorId;
  set wrapColorId(int wrapColorId) => _$this._wrapColorId = wrapColorId;

  int _wrapSizeId;
  int get wrapSizeId => _$this._wrapSizeId;
  set wrapSizeId(int wrapSizeId) => _$this._wrapSizeId = wrapSizeId;

  AddWrapBuilder();

  AddWrapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wrapId = $v.wrapId;
      _wrapColorId = $v.wrapColorId;
      _wrapSizeId = $v.wrapSizeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddWrap other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddWrap;
  }

  @override
  void update(void Function(AddWrapBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddWrap build() {
    final _$result = _$v ??
        new _$AddWrap._(
            wrapId: BuiltValueNullFieldError.checkNotNull(
                wrapId, 'AddWrap', 'wrapId'),
            wrapColorId: wrapColorId,
            wrapSizeId: wrapSizeId);
    replace(_$result);
    return _$result;
  }
}

class _$ClearSuccess extends ClearSuccess {
  factory _$ClearSuccess([void Function(ClearSuccessBuilder) updates]) =>
      (new ClearSuccessBuilder()..update(updates)).build();

  _$ClearSuccess._() : super._();

  @override
  ClearSuccess rebuild(void Function(ClearSuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearSuccessBuilder toBuilder() => new ClearSuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearSuccess;
  }

  @override
  int get hashCode {
    return 74631534;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearSuccess').toString();
  }
}

class ClearSuccessBuilder
    implements Builder<ClearSuccess, ClearSuccessBuilder> {
  _$ClearSuccess _$v;

  ClearSuccessBuilder();

  @override
  void replace(ClearSuccess other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearSuccess;
  }

  @override
  void update(void Function(ClearSuccessBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearSuccess build() {
    final _$result = _$v ?? new _$ClearSuccess._();
    replace(_$result);
    return _$result;
  }
}

class _$Clear extends Clear {
  factory _$Clear([void Function(ClearBuilder) updates]) =>
      (new ClearBuilder()..update(updates)).build();

  _$Clear._() : super._();

  @override
  Clear rebuild(void Function(ClearBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearBuilder toBuilder() => new ClearBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Clear;
  }

  @override
  int get hashCode {
    return 102524199;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Clear').toString();
  }
}

class ClearBuilder implements Builder<Clear, ClearBuilder> {
  _$Clear _$v;

  ClearBuilder();

  @override
  void replace(Clear other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Clear;
  }

  @override
  void update(void Function(ClearBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Clear build() {
    final _$result = _$v ?? new _$Clear._();
    replace(_$result);
    return _$result;
  }
}

class _$AddToCartWrap extends AddToCartWrap {
  @override
  final int giftId;
  @override
  final int giftColorId;
  @override
  final int wrapId;
  @override
  final int wrapColorId;

  factory _$AddToCartWrap([void Function(AddToCartWrapBuilder) updates]) =>
      (new AddToCartWrapBuilder()..update(updates)).build();

  _$AddToCartWrap._(
      {this.giftId, this.giftColorId, this.wrapId, this.wrapColorId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(giftId, 'AddToCartWrap', 'giftId');
  }

  @override
  AddToCartWrap rebuild(void Function(AddToCartWrapBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToCartWrapBuilder toBuilder() => new AddToCartWrapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToCartWrap &&
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
    return (newBuiltValueToStringHelper('AddToCartWrap')
          ..add('giftId', giftId)
          ..add('giftColorId', giftColorId)
          ..add('wrapId', wrapId)
          ..add('wrapColorId', wrapColorId))
        .toString();
  }
}

class AddToCartWrapBuilder
    implements Builder<AddToCartWrap, AddToCartWrapBuilder> {
  _$AddToCartWrap _$v;

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

  AddToCartWrapBuilder();

  AddToCartWrapBuilder get _$this {
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
  void replace(AddToCartWrap other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddToCartWrap;
  }

  @override
  void update(void Function(AddToCartWrapBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToCartWrap build() {
    final _$result = _$v ??
        new _$AddToCartWrap._(
            giftId: BuiltValueNullFieldError.checkNotNull(
                giftId, 'AddToCartWrap', 'giftId'),
            giftColorId: giftColorId,
            wrapId: wrapId,
            wrapColorId: wrapColorId);
    replace(_$result);
    return _$result;
  }
}

class _$RemoveItemWrap extends RemoveItemWrap {
  @override
  final int id;

  factory _$RemoveItemWrap([void Function(RemoveItemWrapBuilder) updates]) =>
      (new RemoveItemWrapBuilder()..update(updates)).build();

  _$RemoveItemWrap._({this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'RemoveItemWrap', 'id');
  }

  @override
  RemoveItemWrap rebuild(void Function(RemoveItemWrapBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveItemWrapBuilder toBuilder() =>
      new RemoveItemWrapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveItemWrap && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveItemWrap')..add('id', id))
        .toString();
  }
}

class RemoveItemWrapBuilder
    implements Builder<RemoveItemWrap, RemoveItemWrapBuilder> {
  _$RemoveItemWrap _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  RemoveItemWrapBuilder();

  RemoveItemWrapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveItemWrap other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveItemWrap;
  }

  @override
  void update(void Function(RemoveItemWrapBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveItemWrap build() {
    final _$result = _$v ??
        new _$RemoveItemWrap._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'RemoveItemWrap', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
