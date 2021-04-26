// GENERATED CODE - DO NOT MODIFY BY HAND

part of edit_event;

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

class _$AddToFavouriteEdit extends AddToFavouriteEdit {
  @override
  final int id;

  factory _$AddToFavouriteEdit(
          [void Function(AddToFavouriteEditBuilder) updates]) =>
      (new AddToFavouriteEditBuilder()..update(updates)).build();

  _$AddToFavouriteEdit._({this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'AddToFavouriteEdit', 'id');
  }

  @override
  AddToFavouriteEdit rebuild(
          void Function(AddToFavouriteEditBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToFavouriteEditBuilder toBuilder() =>
      new AddToFavouriteEditBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToFavouriteEdit && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddToFavouriteEdit')..add('id', id))
        .toString();
  }
}

class AddToFavouriteEditBuilder
    implements Builder<AddToFavouriteEdit, AddToFavouriteEditBuilder> {
  _$AddToFavouriteEdit _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  AddToFavouriteEditBuilder();

  AddToFavouriteEditBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToFavouriteEdit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddToFavouriteEdit;
  }

  @override
  void update(void Function(AddToFavouriteEditBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToFavouriteEdit build() {
    final _$result = _$v ??
        new _$AddToFavouriteEdit._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'AddToFavouriteEdit', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$AddToCartEdit extends AddToCartEdit {
  @override
  final int giftId;
  @override
  final int giftColorId;
  @override
  final int wrapId;
  @override
  final int wrapColorId;
  @override
  final int wrapSizeId;
  @override
  final int giftSizeId;

  factory _$AddToCartEdit([void Function(AddToCartEditBuilder) updates]) =>
      (new AddToCartEditBuilder()..update(updates)).build();

  _$AddToCartEdit._(
      {this.giftId,
      this.giftColorId,
      this.wrapId,
      this.wrapColorId,
      this.wrapSizeId,
      this.giftSizeId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(giftId, 'AddToCartEdit', 'giftId');
  }

  @override
  AddToCartEdit rebuild(void Function(AddToCartEditBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToCartEditBuilder toBuilder() => new AddToCartEditBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToCartEdit &&
        giftId == other.giftId &&
        giftColorId == other.giftColorId &&
        wrapId == other.wrapId &&
        wrapColorId == other.wrapColorId &&
        wrapSizeId == other.wrapSizeId &&
        giftSizeId == other.giftSizeId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, giftId.hashCode), giftColorId.hashCode),
                    wrapId.hashCode),
                wrapColorId.hashCode),
            wrapSizeId.hashCode),
        giftSizeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddToCartEdit')
          ..add('giftId', giftId)
          ..add('giftColorId', giftColorId)
          ..add('wrapId', wrapId)
          ..add('wrapColorId', wrapColorId)
          ..add('wrapSizeId', wrapSizeId)
          ..add('giftSizeId', giftSizeId))
        .toString();
  }
}

class AddToCartEditBuilder
    implements Builder<AddToCartEdit, AddToCartEditBuilder> {
  _$AddToCartEdit _$v;

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

  int _wrapSizeId;
  int get wrapSizeId => _$this._wrapSizeId;
  set wrapSizeId(int wrapSizeId) => _$this._wrapSizeId = wrapSizeId;

  int _giftSizeId;
  int get giftSizeId => _$this._giftSizeId;
  set giftSizeId(int giftSizeId) => _$this._giftSizeId = giftSizeId;

  AddToCartEditBuilder();

  AddToCartEditBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _giftId = $v.giftId;
      _giftColorId = $v.giftColorId;
      _wrapId = $v.wrapId;
      _wrapColorId = $v.wrapColorId;
      _wrapSizeId = $v.wrapSizeId;
      _giftSizeId = $v.giftSizeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToCartEdit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddToCartEdit;
  }

  @override
  void update(void Function(AddToCartEditBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToCartEdit build() {
    final _$result = _$v ??
        new _$AddToCartEdit._(
            giftId: BuiltValueNullFieldError.checkNotNull(
                giftId, 'AddToCartEdit', 'giftId'),
            giftColorId: giftColorId,
            wrapId: wrapId,
            wrapColorId: wrapColorId,
            wrapSizeId: wrapSizeId,
            giftSizeId: giftSizeId);
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

class _$RemoveFavouriteEdit extends RemoveFavouriteEdit {
  @override
  final int id;

  factory _$RemoveFavouriteEdit(
          [void Function(RemoveFavouriteEditBuilder) updates]) =>
      (new RemoveFavouriteEditBuilder()..update(updates)).build();

  _$RemoveFavouriteEdit._({this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'RemoveFavouriteEdit', 'id');
  }

  @override
  RemoveFavouriteEdit rebuild(
          void Function(RemoveFavouriteEditBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveFavouriteEditBuilder toBuilder() =>
      new RemoveFavouriteEditBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveFavouriteEdit && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveFavouriteEdit')..add('id', id))
        .toString();
  }
}

class RemoveFavouriteEditBuilder
    implements Builder<RemoveFavouriteEdit, RemoveFavouriteEditBuilder> {
  _$RemoveFavouriteEdit _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  RemoveFavouriteEditBuilder();

  RemoveFavouriteEditBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFavouriteEdit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveFavouriteEdit;
  }

  @override
  void update(void Function(RemoveFavouriteEditBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveFavouriteEdit build() {
    final _$result = _$v ??
        new _$RemoveFavouriteEdit._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'RemoveFavouriteEdit', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$ClearSuccessEdit extends ClearSuccessEdit {
  factory _$ClearSuccessEdit(
          [void Function(ClearSuccessEditBuilder) updates]) =>
      (new ClearSuccessEditBuilder()..update(updates)).build();

  _$ClearSuccessEdit._() : super._();

  @override
  ClearSuccessEdit rebuild(void Function(ClearSuccessEditBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearSuccessEditBuilder toBuilder() =>
      new ClearSuccessEditBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearSuccessEdit;
  }

  @override
  int get hashCode {
    return 358167539;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearSuccessEdit').toString();
  }
}

class ClearSuccessEditBuilder
    implements Builder<ClearSuccessEdit, ClearSuccessEditBuilder> {
  _$ClearSuccessEdit _$v;

  ClearSuccessEditBuilder();

  @override
  void replace(ClearSuccessEdit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearSuccessEdit;
  }

  @override
  void update(void Function(ClearSuccessEditBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearSuccessEdit build() {
    final _$result = _$v ?? new _$ClearSuccessEdit._();
    replace(_$result);
    return _$result;
  }
}

class _$RemoveItemEdit extends RemoveItemEdit {
  @override
  final int id;

  factory _$RemoveItemEdit([void Function(RemoveItemEditBuilder) updates]) =>
      (new RemoveItemEditBuilder()..update(updates)).build();

  _$RemoveItemEdit._({this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'RemoveItemEdit', 'id');
  }

  @override
  RemoveItemEdit rebuild(void Function(RemoveItemEditBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveItemEditBuilder toBuilder() =>
      new RemoveItemEditBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveItemEdit && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveItemEdit')..add('id', id))
        .toString();
  }
}

class RemoveItemEditBuilder
    implements Builder<RemoveItemEdit, RemoveItemEditBuilder> {
  _$RemoveItemEdit _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  RemoveItemEditBuilder();

  RemoveItemEditBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveItemEdit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveItemEdit;
  }

  @override
  void update(void Function(RemoveItemEditBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveItemEdit build() {
    final _$result = _$v ??
        new _$RemoveItemEdit._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'RemoveItemEdit', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
