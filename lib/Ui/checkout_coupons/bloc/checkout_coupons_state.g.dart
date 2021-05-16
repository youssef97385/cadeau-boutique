// GENERATED CODE - DO NOT MODIFY BY HAND

part of checkout_coupons_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckoutCouponsState extends CheckoutCouponsState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<ReciverCouponsModel> recievers;
  @override
  final BuiltList<String> giftTo;
  @override
  final BuiltList<String> countryCode;
  @override
  final BuiltList<String> phoneNumber;

  factory _$CheckoutCouponsState(
          [void Function(CheckoutCouponsStateBuilder) updates]) =>
      (new CheckoutCouponsStateBuilder()..update(updates)).build();

  _$CheckoutCouponsState._(
      {this.success,
      this.isLoading,
      this.error,
      this.recievers,
      this.giftTo,
      this.countryCode,
      this.phoneNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, 'CheckoutCouponsState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'CheckoutCouponsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        error, 'CheckoutCouponsState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        recievers, 'CheckoutCouponsState', 'recievers');
    BuiltValueNullFieldError.checkNotNull(
        giftTo, 'CheckoutCouponsState', 'giftTo');
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'CheckoutCouponsState', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, 'CheckoutCouponsState', 'phoneNumber');
  }

  @override
  CheckoutCouponsState rebuild(
          void Function(CheckoutCouponsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckoutCouponsStateBuilder toBuilder() =>
      new CheckoutCouponsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckoutCouponsState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        recievers == other.recievers &&
        giftTo == other.giftTo &&
        countryCode == other.countryCode &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, success.hashCode), isLoading.hashCode),
                        error.hashCode),
                    recievers.hashCode),
                giftTo.hashCode),
            countryCode.hashCode),
        phoneNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckoutCouponsState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('recievers', recievers)
          ..add('giftTo', giftTo)
          ..add('countryCode', countryCode)
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class CheckoutCouponsStateBuilder
    implements Builder<CheckoutCouponsState, CheckoutCouponsStateBuilder> {
  _$CheckoutCouponsState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<ReciverCouponsModel> _recievers;
  ListBuilder<ReciverCouponsModel> get recievers =>
      _$this._recievers ??= new ListBuilder<ReciverCouponsModel>();
  set recievers(ListBuilder<ReciverCouponsModel> recievers) =>
      _$this._recievers = recievers;

  ListBuilder<String> _giftTo;
  ListBuilder<String> get giftTo =>
      _$this._giftTo ??= new ListBuilder<String>();
  set giftTo(ListBuilder<String> giftTo) => _$this._giftTo = giftTo;

  ListBuilder<String> _countryCode;
  ListBuilder<String> get countryCode =>
      _$this._countryCode ??= new ListBuilder<String>();
  set countryCode(ListBuilder<String> countryCode) =>
      _$this._countryCode = countryCode;

  ListBuilder<String> _phoneNumber;
  ListBuilder<String> get phoneNumber =>
      _$this._phoneNumber ??= new ListBuilder<String>();
  set phoneNumber(ListBuilder<String> phoneNumber) =>
      _$this._phoneNumber = phoneNumber;

  CheckoutCouponsStateBuilder();

  CheckoutCouponsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _recievers = $v.recievers.toBuilder();
      _giftTo = $v.giftTo.toBuilder();
      _countryCode = $v.countryCode.toBuilder();
      _phoneNumber = $v.phoneNumber.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckoutCouponsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckoutCouponsState;
  }

  @override
  void update(void Function(CheckoutCouponsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckoutCouponsState build() {
    _$CheckoutCouponsState _$result;
    try {
      _$result = _$v ??
          new _$CheckoutCouponsState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'CheckoutCouponsState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'CheckoutCouponsState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'CheckoutCouponsState', 'error'),
              recievers: recievers.build(),
              giftTo: giftTo.build(),
              countryCode: countryCode.build(),
              phoneNumber: phoneNumber.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'recievers';
        recievers.build();
        _$failedField = 'giftTo';
        giftTo.build();
        _$failedField = 'countryCode';
        countryCode.build();
        _$failedField = 'phoneNumber';
        phoneNumber.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CheckoutCouponsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
