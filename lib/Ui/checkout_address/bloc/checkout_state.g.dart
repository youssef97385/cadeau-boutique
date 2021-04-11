// GENERATED CODE - DO NOT MODIFY BY HAND

part of checkout_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckoutState extends CheckoutState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<RecieverModel> recievers;
  @override
  final BuiltList<String> giftTo;
  @override
  final BuiltList<String> deliveryDate;
  @override
  final BuiltList<String> countryCode;
  @override
  final BuiltList<String> phoneNumber;
  @override
  final BuiltList<String> address;
  @override
  final String total;

  factory _$CheckoutState([void Function(CheckoutStateBuilder) updates]) =>
      (new CheckoutStateBuilder()..update(updates)).build();

  _$CheckoutState._(
      {this.success,
      this.isLoading,
      this.error,
      this.recievers,
      this.giftTo,
      this.deliveryDate,
      this.countryCode,
      this.phoneNumber,
      this.address,
      this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'CheckoutState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'CheckoutState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'CheckoutState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        recievers, 'CheckoutState', 'recievers');
    BuiltValueNullFieldError.checkNotNull(giftTo, 'CheckoutState', 'giftTo');
    BuiltValueNullFieldError.checkNotNull(
        deliveryDate, 'CheckoutState', 'deliveryDate');
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'CheckoutState', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, 'CheckoutState', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(address, 'CheckoutState', 'address');
    BuiltValueNullFieldError.checkNotNull(total, 'CheckoutState', 'total');
  }

  @override
  CheckoutState rebuild(void Function(CheckoutStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckoutStateBuilder toBuilder() => new CheckoutStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckoutState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        recievers == other.recievers &&
        giftTo == other.giftTo &&
        deliveryDate == other.deliveryDate &&
        countryCode == other.countryCode &&
        phoneNumber == other.phoneNumber &&
        address == other.address &&
        total == other.total;
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
                                    $jc($jc(0, success.hashCode),
                                        isLoading.hashCode),
                                    error.hashCode),
                                recievers.hashCode),
                            giftTo.hashCode),
                        deliveryDate.hashCode),
                    countryCode.hashCode),
                phoneNumber.hashCode),
            address.hashCode),
        total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckoutState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('recievers', recievers)
          ..add('giftTo', giftTo)
          ..add('deliveryDate', deliveryDate)
          ..add('countryCode', countryCode)
          ..add('phoneNumber', phoneNumber)
          ..add('address', address)
          ..add('total', total))
        .toString();
  }
}

class CheckoutStateBuilder
    implements Builder<CheckoutState, CheckoutStateBuilder> {
  _$CheckoutState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<RecieverModel> _recievers;
  ListBuilder<RecieverModel> get recievers =>
      _$this._recievers ??= new ListBuilder<RecieverModel>();
  set recievers(ListBuilder<RecieverModel> recievers) =>
      _$this._recievers = recievers;

  ListBuilder<String> _giftTo;
  ListBuilder<String> get giftTo =>
      _$this._giftTo ??= new ListBuilder<String>();
  set giftTo(ListBuilder<String> giftTo) => _$this._giftTo = giftTo;

  ListBuilder<String> _deliveryDate;
  ListBuilder<String> get deliveryDate =>
      _$this._deliveryDate ??= new ListBuilder<String>();
  set deliveryDate(ListBuilder<String> deliveryDate) =>
      _$this._deliveryDate = deliveryDate;

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

  ListBuilder<String> _address;
  ListBuilder<String> get address =>
      _$this._address ??= new ListBuilder<String>();
  set address(ListBuilder<String> address) => _$this._address = address;

  String _total;
  String get total => _$this._total;
  set total(String total) => _$this._total = total;

  CheckoutStateBuilder();

  CheckoutStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _recievers = $v.recievers.toBuilder();
      _giftTo = $v.giftTo.toBuilder();
      _deliveryDate = $v.deliveryDate.toBuilder();
      _countryCode = $v.countryCode.toBuilder();
      _phoneNumber = $v.phoneNumber.toBuilder();
      _address = $v.address.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckoutState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckoutState;
  }

  @override
  void update(void Function(CheckoutStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckoutState build() {
    _$CheckoutState _$result;
    try {
      _$result = _$v ??
          new _$CheckoutState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'CheckoutState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'CheckoutState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'CheckoutState', 'error'),
              recievers: recievers.build(),
              giftTo: giftTo.build(),
              deliveryDate: deliveryDate.build(),
              countryCode: countryCode.build(),
              phoneNumber: phoneNumber.build(),
              address: address.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, 'CheckoutState', 'total'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'recievers';
        recievers.build();
        _$failedField = 'giftTo';
        giftTo.build();
        _$failedField = 'deliveryDate';
        deliveryDate.build();
        _$failedField = 'countryCode';
        countryCode.build();
        _$failedField = 'phoneNumber';
        phoneNumber.build();
        _$failedField = 'address';
        address.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CheckoutState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
