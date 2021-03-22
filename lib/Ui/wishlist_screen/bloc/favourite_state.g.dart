// GENERATED CODE - DO NOT MODIFY BY HAND

part of favourite_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FavouriteState extends FavouriteState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final bool loginState;
  @override
  final BuiltList<ProductModel> products;

  factory _$FavouriteState([void Function(FavouriteStateBuilder) updates]) =>
      (new FavouriteStateBuilder()..update(updates)).build();

  _$FavouriteState._(
      {this.success,
      this.isLoading,
      this.error,
      this.loginState,
      this.products})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'FavouriteState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'FavouriteState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'FavouriteState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        loginState, 'FavouriteState', 'loginState');
    BuiltValueNullFieldError.checkNotNull(
        products, 'FavouriteState', 'products');
  }

  @override
  FavouriteState rebuild(void Function(FavouriteStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavouriteStateBuilder toBuilder() =>
      new FavouriteStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavouriteState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        loginState == other.loginState &&
        products == other.products;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, success.hashCode), isLoading.hashCode),
                error.hashCode),
            loginState.hashCode),
        products.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavouriteState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('loginState', loginState)
          ..add('products', products))
        .toString();
  }
}

class FavouriteStateBuilder
    implements Builder<FavouriteState, FavouriteStateBuilder> {
  _$FavouriteState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _loginState;
  bool get loginState => _$this._loginState;
  set loginState(bool loginState) => _$this._loginState = loginState;

  ListBuilder<ProductModel> _products;
  ListBuilder<ProductModel> get products =>
      _$this._products ??= new ListBuilder<ProductModel>();
  set products(ListBuilder<ProductModel> products) =>
      _$this._products = products;

  FavouriteStateBuilder();

  FavouriteStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _loginState = $v.loginState;
      _products = $v.products.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavouriteState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FavouriteState;
  }

  @override
  void update(void Function(FavouriteStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavouriteState build() {
    _$FavouriteState _$result;
    try {
      _$result = _$v ??
          new _$FavouriteState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'FavouriteState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'FavouriteState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'FavouriteState', 'error'),
              loginState: BuiltValueNullFieldError.checkNotNull(
                  loginState, 'FavouriteState', 'loginState'),
              products: products.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FavouriteState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
