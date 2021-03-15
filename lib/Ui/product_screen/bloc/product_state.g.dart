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

  factory _$ProductState([void Function(ProductStateBuilder) updates]) =>
      (new ProductStateBuilder()..update(updates)).build();

  _$ProductState._({this.success, this.isLoading, this.error, this.product})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'ProductState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'ProductState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'ProductState', 'error');
    BuiltValueNullFieldError.checkNotNull(product, 'ProductState', 'product');
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
        product == other.product;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, success.hashCode), isLoading.hashCode), error.hashCode),
        product.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('product', product))
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

  ProductStateBuilder();

  ProductStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _product = $v.product.toBuilder();
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
              product: product.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'product';
        product.build();
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
