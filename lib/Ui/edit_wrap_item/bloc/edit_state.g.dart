// GENERATED CODE - DO NOT MODIFY BY HAND

part of edit_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditState extends EditState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final ProductModel product;
  @override
  final BuiltList<WrapModel> wraps;
  @override
  final bool removed;
  @override
  final bool successAddToCart;
  @override
  final bool successRemoved;

  factory _$EditState([void Function(EditStateBuilder) updates]) =>
      (new EditStateBuilder()..update(updates)).build();

  _$EditState._(
      {this.success,
      this.isLoading,
      this.error,
      this.product,
      this.wraps,
      this.removed,
      this.successAddToCart,
      this.successRemoved})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'EditState', 'success');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'EditState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'EditState', 'error');
    BuiltValueNullFieldError.checkNotNull(product, 'EditState', 'product');
    BuiltValueNullFieldError.checkNotNull(wraps, 'EditState', 'wraps');
    BuiltValueNullFieldError.checkNotNull(removed, 'EditState', 'removed');
    BuiltValueNullFieldError.checkNotNull(
        successAddToCart, 'EditState', 'successAddToCart');
    BuiltValueNullFieldError.checkNotNull(
        successRemoved, 'EditState', 'successRemoved');
  }

  @override
  EditState rebuild(void Function(EditStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditStateBuilder toBuilder() => new EditStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        product == other.product &&
        wraps == other.wraps &&
        removed == other.removed &&
        successAddToCart == other.successAddToCart &&
        successRemoved == other.successRemoved;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, success.hashCode), isLoading.hashCode),
                            error.hashCode),
                        product.hashCode),
                    wraps.hashCode),
                removed.hashCode),
            successAddToCart.hashCode),
        successRemoved.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EditState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('product', product)
          ..add('wraps', wraps)
          ..add('removed', removed)
          ..add('successAddToCart', successAddToCart)
          ..add('successRemoved', successRemoved))
        .toString();
  }
}

class EditStateBuilder implements Builder<EditState, EditStateBuilder> {
  _$EditState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ProductModelBuilder _product;
  ProductModelBuilder get product =>
      _$this._product ??= new ProductModelBuilder();
  set product(ProductModelBuilder product) => _$this._product = product;

  ListBuilder<WrapModel> _wraps;
  ListBuilder<WrapModel> get wraps =>
      _$this._wraps ??= new ListBuilder<WrapModel>();
  set wraps(ListBuilder<WrapModel> wraps) => _$this._wraps = wraps;

  bool _removed;
  bool get removed => _$this._removed;
  set removed(bool removed) => _$this._removed = removed;

  bool _successAddToCart;
  bool get successAddToCart => _$this._successAddToCart;
  set successAddToCart(bool successAddToCart) =>
      _$this._successAddToCart = successAddToCart;

  bool _successRemoved;
  bool get successRemoved => _$this._successRemoved;
  set successRemoved(bool successRemoved) =>
      _$this._successRemoved = successRemoved;

  EditStateBuilder();

  EditStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _product = $v.product.toBuilder();
      _wraps = $v.wraps.toBuilder();
      _removed = $v.removed;
      _successAddToCart = $v.successAddToCart;
      _successRemoved = $v.successRemoved;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditState;
  }

  @override
  void update(void Function(EditStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EditState build() {
    _$EditState _$result;
    try {
      _$result = _$v ??
          new _$EditState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'EditState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'EditState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'EditState', 'error'),
              product: product.build(),
              wraps: wraps.build(),
              removed: BuiltValueNullFieldError.checkNotNull(
                  removed, 'EditState', 'removed'),
              successAddToCart: BuiltValueNullFieldError.checkNotNull(
                  successAddToCart, 'EditState', 'successAddToCart'),
              successRemoved: BuiltValueNullFieldError.checkNotNull(
                  successRemoved, 'EditState', 'successRemoved'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'product';
        product.build();
        _$failedField = 'wraps';
        wraps.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EditState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
