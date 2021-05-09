// GENERATED CODE - DO NOT MODIFY BY HAND

part of coupons_list_details_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CouponsListDetaislState extends CouponsListDetaislState {
  @override
  final bool success;
  @override
  final bool successDetails;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<CouponListModel> couponsData;

  factory _$CouponsListDetaislState(
          [void Function(CouponsListDetaislStateBuilder) updates]) =>
      (new CouponsListDetaislStateBuilder()..update(updates)).build();

  _$CouponsListDetaislState._(
      {this.success,
      this.successDetails,
      this.isLoading,
      this.error,
      this.couponsData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, 'CouponsListDetaislState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        successDetails, 'CouponsListDetaislState', 'successDetails');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'CouponsListDetaislState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        error, 'CouponsListDetaislState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        couponsData, 'CouponsListDetaislState', 'couponsData');
  }

  @override
  CouponsListDetaislState rebuild(
          void Function(CouponsListDetaislStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CouponsListDetaislStateBuilder toBuilder() =>
      new CouponsListDetaislStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CouponsListDetaislState &&
        success == other.success &&
        successDetails == other.successDetails &&
        isLoading == other.isLoading &&
        error == other.error &&
        couponsData == other.couponsData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, success.hashCode), successDetails.hashCode),
                isLoading.hashCode),
            error.hashCode),
        couponsData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CouponsListDetaislState')
          ..add('success', success)
          ..add('successDetails', successDetails)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('couponsData', couponsData))
        .toString();
  }
}

class CouponsListDetaislStateBuilder
    implements
        Builder<CouponsListDetaislState, CouponsListDetaislStateBuilder> {
  _$CouponsListDetaislState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _successDetails;
  bool get successDetails => _$this._successDetails;
  set successDetails(bool successDetails) =>
      _$this._successDetails = successDetails;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<CouponListModel> _couponsData;
  ListBuilder<CouponListModel> get couponsData =>
      _$this._couponsData ??= new ListBuilder<CouponListModel>();
  set couponsData(ListBuilder<CouponListModel> couponsData) =>
      _$this._couponsData = couponsData;

  CouponsListDetaislStateBuilder();

  CouponsListDetaislStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _successDetails = $v.successDetails;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _couponsData = $v.couponsData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CouponsListDetaislState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CouponsListDetaislState;
  }

  @override
  void update(void Function(CouponsListDetaislStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CouponsListDetaislState build() {
    _$CouponsListDetaislState _$result;
    try {
      _$result = _$v ??
          new _$CouponsListDetaislState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'CouponsListDetaislState', 'success'),
              successDetails: BuiltValueNullFieldError.checkNotNull(
                  successDetails, 'CouponsListDetaislState', 'successDetails'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'CouponsListDetaislState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'CouponsListDetaislState', 'error'),
              couponsData: couponsData.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'couponsData';
        couponsData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CouponsListDetaislState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
