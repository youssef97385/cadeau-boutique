// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeState extends HomeState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final bool loginState;
  @override
  final BuiltList<SliderModel> sliders;
  @override
  final BuiltList<OccasionModel> occasions;
  @override
  final BuiltList<OccasionModel> nearbyOccasions;
  @override
  final BuiltList<CategoryModel> categories;
  @override
  final BuiltList<BrandModel> brands;
  @override
  final BuiltList<CouponModel> coupons;
  @override
  final BuiltList<WrapModel> wraps;
  @override
  final BuiltList<ProductModel> products;

  factory _$HomeState([void Function(HomeStateBuilder) updates]) =>
      (new HomeStateBuilder()..update(updates)).build();

  _$HomeState._(
      {this.success,
      this.isLoading,
      this.error,
      this.loginState,
      this.sliders,
      this.occasions,
      this.nearbyOccasions,
      this.categories,
      this.brands,
      this.coupons,
      this.wraps,
      this.products})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'HomeState', 'success');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'HomeState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'HomeState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        loginState, 'HomeState', 'loginState');
    BuiltValueNullFieldError.checkNotNull(sliders, 'HomeState', 'sliders');
    BuiltValueNullFieldError.checkNotNull(occasions, 'HomeState', 'occasions');
    BuiltValueNullFieldError.checkNotNull(
        nearbyOccasions, 'HomeState', 'nearbyOccasions');
    BuiltValueNullFieldError.checkNotNull(
        categories, 'HomeState', 'categories');
    BuiltValueNullFieldError.checkNotNull(brands, 'HomeState', 'brands');
    BuiltValueNullFieldError.checkNotNull(coupons, 'HomeState', 'coupons');
    BuiltValueNullFieldError.checkNotNull(wraps, 'HomeState', 'wraps');
    BuiltValueNullFieldError.checkNotNull(products, 'HomeState', 'products');
  }

  @override
  HomeState rebuild(void Function(HomeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        loginState == other.loginState &&
        sliders == other.sliders &&
        occasions == other.occasions &&
        nearbyOccasions == other.nearbyOccasions &&
        categories == other.categories &&
        brands == other.brands &&
        coupons == other.coupons &&
        wraps == other.wraps &&
        products == other.products;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, success.hashCode),
                                                isLoading.hashCode),
                                            error.hashCode),
                                        loginState.hashCode),
                                    sliders.hashCode),
                                occasions.hashCode),
                            nearbyOccasions.hashCode),
                        categories.hashCode),
                    brands.hashCode),
                coupons.hashCode),
            wraps.hashCode),
        products.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('loginState', loginState)
          ..add('sliders', sliders)
          ..add('occasions', occasions)
          ..add('nearbyOccasions', nearbyOccasions)
          ..add('categories', categories)
          ..add('brands', brands)
          ..add('coupons', coupons)
          ..add('wraps', wraps)
          ..add('products', products))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState _$v;

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

  ListBuilder<SliderModel> _sliders;
  ListBuilder<SliderModel> get sliders =>
      _$this._sliders ??= new ListBuilder<SliderModel>();
  set sliders(ListBuilder<SliderModel> sliders) => _$this._sliders = sliders;

  ListBuilder<OccasionModel> _occasions;
  ListBuilder<OccasionModel> get occasions =>
      _$this._occasions ??= new ListBuilder<OccasionModel>();
  set occasions(ListBuilder<OccasionModel> occasions) =>
      _$this._occasions = occasions;

  ListBuilder<OccasionModel> _nearbyOccasions;
  ListBuilder<OccasionModel> get nearbyOccasions =>
      _$this._nearbyOccasions ??= new ListBuilder<OccasionModel>();
  set nearbyOccasions(ListBuilder<OccasionModel> nearbyOccasions) =>
      _$this._nearbyOccasions = nearbyOccasions;

  ListBuilder<CategoryModel> _categories;
  ListBuilder<CategoryModel> get categories =>
      _$this._categories ??= new ListBuilder<CategoryModel>();
  set categories(ListBuilder<CategoryModel> categories) =>
      _$this._categories = categories;

  ListBuilder<BrandModel> _brands;
  ListBuilder<BrandModel> get brands =>
      _$this._brands ??= new ListBuilder<BrandModel>();
  set brands(ListBuilder<BrandModel> brands) => _$this._brands = brands;

  ListBuilder<CouponModel> _coupons;
  ListBuilder<CouponModel> get coupons =>
      _$this._coupons ??= new ListBuilder<CouponModel>();
  set coupons(ListBuilder<CouponModel> coupons) => _$this._coupons = coupons;

  ListBuilder<WrapModel> _wraps;
  ListBuilder<WrapModel> get wraps =>
      _$this._wraps ??= new ListBuilder<WrapModel>();
  set wraps(ListBuilder<WrapModel> wraps) => _$this._wraps = wraps;

  ListBuilder<ProductModel> _products;
  ListBuilder<ProductModel> get products =>
      _$this._products ??= new ListBuilder<ProductModel>();
  set products(ListBuilder<ProductModel> products) =>
      _$this._products = products;

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _loginState = $v.loginState;
      _sliders = $v.sliders.toBuilder();
      _occasions = $v.occasions.toBuilder();
      _nearbyOccasions = $v.nearbyOccasions.toBuilder();
      _categories = $v.categories.toBuilder();
      _brands = $v.brands.toBuilder();
      _coupons = $v.coupons.toBuilder();
      _wraps = $v.wraps.toBuilder();
      _products = $v.products.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeState;
  }

  @override
  void update(void Function(HomeStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeState build() {
    _$HomeState _$result;
    try {
      _$result = _$v ??
          new _$HomeState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'HomeState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'HomeState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'HomeState', 'error'),
              loginState: BuiltValueNullFieldError.checkNotNull(
                  loginState, 'HomeState', 'loginState'),
              sliders: sliders.build(),
              occasions: occasions.build(),
              nearbyOccasions: nearbyOccasions.build(),
              categories: categories.build(),
              brands: brands.build(),
              coupons: coupons.build(),
              wraps: wraps.build(),
              products: products.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sliders';
        sliders.build();
        _$failedField = 'occasions';
        occasions.build();
        _$failedField = 'nearbyOccasions';
        nearbyOccasions.build();
        _$failedField = 'categories';
        categories.build();
        _$failedField = 'brands';
        brands.build();
        _$failedField = 'coupons';
        coupons.build();
        _$failedField = 'wraps';
        wraps.build();
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HomeState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
