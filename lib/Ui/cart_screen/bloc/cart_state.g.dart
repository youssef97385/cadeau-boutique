// GENERATED CODE - DO NOT MODIFY BY HAND

part of cart_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CartState extends CartState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final CartModel cart;
  @override
  final BuiltList<CartItem> cartList;
  @override
  final BuiltList<WrapModel> wraps;
  @override
  final int productsCost;
  @override
  final int wrapsCost;
  @override
  final int totalCosts;

  factory _$CartState([void Function(CartStateBuilder) updates]) =>
      (new CartStateBuilder()..update(updates)).build();

  _$CartState._(
      {this.success,
      this.isLoading,
      this.error,
      this.cart,
      this.cartList,
      this.wraps,
      this.productsCost,
      this.wrapsCost,
      this.totalCosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'CartState', 'success');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'CartState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'CartState', 'error');
    BuiltValueNullFieldError.checkNotNull(cart, 'CartState', 'cart');
    BuiltValueNullFieldError.checkNotNull(cartList, 'CartState', 'cartList');
    BuiltValueNullFieldError.checkNotNull(wraps, 'CartState', 'wraps');
  }

  @override
  CartState rebuild(void Function(CartStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartStateBuilder toBuilder() => new CartStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        cart == other.cart &&
        cartList == other.cartList &&
        wraps == other.wraps &&
        productsCost == other.productsCost &&
        wrapsCost == other.wrapsCost &&
        totalCosts == other.totalCosts;
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
                                $jc($jc(0, success.hashCode),
                                    isLoading.hashCode),
                                error.hashCode),
                            cart.hashCode),
                        cartList.hashCode),
                    wraps.hashCode),
                productsCost.hashCode),
            wrapsCost.hashCode),
        totalCosts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('cart', cart)
          ..add('cartList', cartList)
          ..add('wraps', wraps)
          ..add('productsCost', productsCost)
          ..add('wrapsCost', wrapsCost)
          ..add('totalCosts', totalCosts))
        .toString();
  }
}

class CartStateBuilder implements Builder<CartState, CartStateBuilder> {
  _$CartState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  CartModelBuilder _cart;
  CartModelBuilder get cart => _$this._cart ??= new CartModelBuilder();
  set cart(CartModelBuilder cart) => _$this._cart = cart;

  ListBuilder<CartItem> _cartList;
  ListBuilder<CartItem> get cartList =>
      _$this._cartList ??= new ListBuilder<CartItem>();
  set cartList(ListBuilder<CartItem> cartList) => _$this._cartList = cartList;

  ListBuilder<WrapModel> _wraps;
  ListBuilder<WrapModel> get wraps =>
      _$this._wraps ??= new ListBuilder<WrapModel>();
  set wraps(ListBuilder<WrapModel> wraps) => _$this._wraps = wraps;

  int _productsCost;
  int get productsCost => _$this._productsCost;
  set productsCost(int productsCost) => _$this._productsCost = productsCost;

  int _wrapsCost;
  int get wrapsCost => _$this._wrapsCost;
  set wrapsCost(int wrapsCost) => _$this._wrapsCost = wrapsCost;

  int _totalCosts;
  int get totalCosts => _$this._totalCosts;
  set totalCosts(int totalCosts) => _$this._totalCosts = totalCosts;

  CartStateBuilder();

  CartStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _cart = $v.cart.toBuilder();
      _cartList = $v.cartList.toBuilder();
      _wraps = $v.wraps.toBuilder();
      _productsCost = $v.productsCost;
      _wrapsCost = $v.wrapsCost;
      _totalCosts = $v.totalCosts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartState;
  }

  @override
  void update(void Function(CartStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CartState build() {
    _$CartState _$result;
    try {
      _$result = _$v ??
          new _$CartState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'CartState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'CartState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'CartState', 'error'),
              cart: cart.build(),
              cartList: cartList.build(),
              wraps: wraps.build(),
              productsCost: productsCost,
              wrapsCost: wrapsCost,
              totalCosts: totalCosts);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cart';
        cart.build();
        _$failedField = 'cartList';
        cartList.build();
        _$failedField = 'wraps';
        wraps.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CartState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
