// GENERATED CODE - DO NOT MODIFY BY HAND

part of products_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductsState extends ProductsState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<ProductModel> products;

  factory _$ProductsState([void Function(ProductsStateBuilder) updates]) =>
      (new ProductsStateBuilder()..update(updates)).build();

  _$ProductsState._({this.success, this.isLoading, this.error, this.products})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'ProductsState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'ProductsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'ProductsState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        products, 'ProductsState', 'products');
  }

  @override
  ProductsState rebuild(void Function(ProductsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsStateBuilder toBuilder() => new ProductsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        products == other.products;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, success.hashCode), isLoading.hashCode), error.hashCode),
        products.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductsState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('products', products))
        .toString();
  }
}

class ProductsStateBuilder
    implements Builder<ProductsState, ProductsStateBuilder> {
  _$ProductsState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<ProductModel> _products;
  ListBuilder<ProductModel> get products =>
      _$this._products ??= new ListBuilder<ProductModel>();
  set products(ListBuilder<ProductModel> products) =>
      _$this._products = products;

  ProductsStateBuilder();

  ProductsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _products = $v.products.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductsState;
  }

  @override
  void update(void Function(ProductsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductsState build() {
    _$ProductsState _$result;
    try {
      _$result = _$v ??
          new _$ProductsState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'ProductsState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'ProductsState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'ProductsState', 'error'),
              products: products.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
