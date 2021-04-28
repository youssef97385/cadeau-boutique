// GENERATED CODE - DO NOT MODIFY BY HAND

part of product_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductState extends ProductState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final ProductModel product;
  @override
  final bool isLogin;
  @override
  final BuiltList<WrapModel> wraps;
  @override
  final bool removed;
  @override
  final bool successAddToCart;

  factory _$ProductState([void Function(ProductStateBuilder) updates]) =>
      (new ProductStateBuilder()..update(updates)).build();

  _$ProductState._(
      {this.success,
      this.isLoading,
      this.error,
      this.product,
      this.isLogin,
      this.wraps,
      this.removed,
      this.successAddToCart})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'ProductState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'ProductState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'ProductState', 'error');
    BuiltValueNullFieldError.checkNotNull(product, 'ProductState', 'product');
    BuiltValueNullFieldError.checkNotNull(isLogin, 'ProductState', 'isLogin');
    BuiltValueNullFieldError.checkNotNull(wraps, 'ProductState', 'wraps');
    BuiltValueNullFieldError.checkNotNull(removed, 'ProductState', 'removed');
    BuiltValueNullFieldError.checkNotNull(
        successAddToCart, 'ProductState', 'successAddToCart');
  }

  @override
  ProductState rebuild(void Function(ProductStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductStateBuilder toBuilder() => new ProductStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        product == other.product &&
        isLogin == other.isLogin &&
        wraps == other.wraps &&
        removed == other.removed &&
        successAddToCart == other.successAddToCart;
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
                    isLogin.hashCode),
                wraps.hashCode),
            removed.hashCode),
        successAddToCart.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('product', product)
          ..add('isLogin', isLogin)
          ..add('wraps', wraps)
          ..add('removed', removed)
          ..add('successAddToCart', successAddToCart))
        .toString();
  }
}

class ProductStateBuilder
    implements Builder<ProductState, ProductStateBuilder> {
  _$ProductState _$v;

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

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

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

  ProductStateBuilder();

  ProductStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _product = $v.product.toBuilder();
      _isLogin = $v.isLogin;
      _wraps = $v.wraps.toBuilder();
      _removed = $v.removed;
      _successAddToCart = $v.successAddToCart;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductState;
  }

  @override
  void update(void Function(ProductStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductState build() {
    _$ProductState _$result;
    try {
      _$result = _$v ??
          new _$ProductState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'ProductState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'ProductState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'ProductState', 'error'),
              product: product.build(),
              isLogin: BuiltValueNullFieldError.checkNotNull(
                  isLogin, 'ProductState', 'isLogin'),
              wraps: wraps.build(),
              removed: BuiltValueNullFieldError.checkNotNull(
                  removed, 'ProductState', 'removed'),
              successAddToCart: BuiltValueNullFieldError.checkNotNull(
                  successAddToCart, 'ProductState', 'successAddToCart'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'product';
        product.build();

        _$failedField = 'wraps';
        wraps.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
