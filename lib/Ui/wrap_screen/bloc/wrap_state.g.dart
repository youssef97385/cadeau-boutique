// GENERATED CODE - DO NOT MODIFY BY HAND

part of wrap_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WrapState extends WrapState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final WrapItem wrap;
  @override
  final bool successAddToCart;

  factory _$WrapState([void Function(WrapStateBuilder) updates]) =>
      (new WrapStateBuilder()..update(updates)).build();

  _$WrapState._(
      {this.success,
      this.isLoading,
      this.error,
      this.wrap,
      this.successAddToCart})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'WrapState', 'success');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'WrapState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'WrapState', 'error');
    BuiltValueNullFieldError.checkNotNull(wrap, 'WrapState', 'wrap');
    BuiltValueNullFieldError.checkNotNull(
        successAddToCart, 'WrapState', 'successAddToCart');
  }

  @override
  WrapState rebuild(void Function(WrapStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WrapStateBuilder toBuilder() => new WrapStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WrapState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        wrap == other.wrap &&
        successAddToCart == other.successAddToCart;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, success.hashCode), isLoading.hashCode),
                error.hashCode),
            wrap.hashCode),
        successAddToCart.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WrapState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('wrap', wrap)
          ..add('successAddToCart', successAddToCart))
        .toString();
  }
}

class WrapStateBuilder implements Builder<WrapState, WrapStateBuilder> {
  _$WrapState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  WrapItemBuilder _wrap;
  WrapItemBuilder get wrap => _$this._wrap ??= new WrapItemBuilder();
  set wrap(WrapItemBuilder wrap) => _$this._wrap = wrap;

  bool _successAddToCart;
  bool get successAddToCart => _$this._successAddToCart;
  set successAddToCart(bool successAddToCart) =>
      _$this._successAddToCart = successAddToCart;

  WrapStateBuilder();

  WrapStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _wrap = $v.wrap.toBuilder();
      _successAddToCart = $v.successAddToCart;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WrapState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WrapState;
  }

  @override
  void update(void Function(WrapStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WrapState build() {
    _$WrapState _$result;
    try {
      _$result = _$v ??
          new _$WrapState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'WrapState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'WrapState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'WrapState', 'error'),
              wrap: wrap.build(),
              successAddToCart: BuiltValueNullFieldError.checkNotNull(
                  successAddToCart, 'WrapState', 'successAddToCart'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'wrap';
        wrap.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WrapState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
