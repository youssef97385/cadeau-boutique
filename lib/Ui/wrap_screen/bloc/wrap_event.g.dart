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

  factory _$AddWrap([void Function(AddWrapBuilder) updates]) =>
      (new AddWrapBuilder()..update(updates)).build();

  _$AddWrap._({this.wrapId, this.wrapColorId}) : super._() {
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
        wrapColorId == other.wrapColorId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, wrapId.hashCode), wrapColorId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddWrap')
          ..add('wrapId', wrapId)
          ..add('wrapColorId', wrapColorId))
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

  AddWrapBuilder();

  AddWrapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wrapId = $v.wrapId;
      _wrapColorId = $v.wrapColorId;
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
            wrapColorId: wrapColorId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
