// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchState extends SearchState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<ProductModel> products;
  @override
  final BuiltList<FilterItem> choices;
  @override
  final String url;

  factory _$SearchState([void Function(SearchStateBuilder) updates]) =>
      (new SearchStateBuilder()..update(updates)).build();

  _$SearchState._(
      {this.success,
      this.isLoading,
      this.error,
      this.products,
      this.choices,
      this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'SearchState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'SearchState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'SearchState', 'error');
    BuiltValueNullFieldError.checkNotNull(products, 'SearchState', 'products');
    BuiltValueNullFieldError.checkNotNull(choices, 'SearchState', 'choices');
    BuiltValueNullFieldError.checkNotNull(url, 'SearchState', 'url');
  }

  @override
  SearchState rebuild(void Function(SearchStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchStateBuilder toBuilder() => new SearchStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        products == other.products &&
        choices == other.choices &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, success.hashCode), isLoading.hashCode),
                    error.hashCode),
                products.hashCode),
            choices.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('products', products)
          ..add('choices', choices)
          ..add('url', url))
        .toString();
  }
}

class SearchStateBuilder implements Builder<SearchState, SearchStateBuilder> {
  _$SearchState _$v;

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

  ListBuilder<FilterItem> _choices;
  ListBuilder<FilterItem> get choices =>
      _$this._choices ??= new ListBuilder<FilterItem>();
  set choices(ListBuilder<FilterItem> choices) => _$this._choices = choices;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  SearchStateBuilder();

  SearchStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _products = $v.products.toBuilder();
      _choices = $v.choices.toBuilder();
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchState;
  }

  @override
  void update(void Function(SearchStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchState build() {
    _$SearchState _$result;
    try {
      _$result = _$v ??
          new _$SearchState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'SearchState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'SearchState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'SearchState', 'error'),
              products: products.build(),
              choices: choices.build(),
              url: BuiltValueNullFieldError.checkNotNull(
                  url, 'SearchState', 'url'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
        _$failedField = 'choices';
        choices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
