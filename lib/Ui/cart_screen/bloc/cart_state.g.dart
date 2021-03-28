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

  factory _$CartState([void Function(CartStateBuilder) updates]) =>
      (new CartStateBuilder()..update(updates)).build();

  _$CartState._(
      {this.success, this.isLoading, this.error, this.cart, this.cartList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'CartState', 'success');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'CartState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'CartState', 'error');
    BuiltValueNullFieldError.checkNotNull(cart, 'CartState', 'cart');
    BuiltValueNullFieldError.checkNotNull(cartList, 'CartState', 'cartList');
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
        cartList == other.cartList;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, success.hashCode), isLoading.hashCode),
                error.hashCode),
            cart.hashCode),
        cartList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('cart', cart)
          ..add('cartList', cartList))
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

  CartStateBuilder();

  CartStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _cart = $v.cart.toBuilder();
      _cartList = $v.cartList.toBuilder();
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
              cartList: cartList.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cart';
        cart.build();
        _$failedField = 'cartList';
        cartList.build();
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
