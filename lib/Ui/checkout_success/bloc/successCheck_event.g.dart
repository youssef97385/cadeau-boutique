// GENERATED CODE - DO NOT MODIFY BY HAND

part of successCheck_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TryCheckout extends TryCheckout {
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

  factory _$TryCheckout([void Function(TryCheckoutBuilder) updates]) =>
      (new TryCheckoutBuilder()..update(updates)).build();

  _$TryCheckout._(
      {this.recievers,
      this.giftTo,
      this.deliveryDate,
      this.countryCode,
      this.phoneNumber,
      this.address,
      this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        recievers, 'TryCheckout', 'recievers');
    BuiltValueNullFieldError.checkNotNull(giftTo, 'TryCheckout', 'giftTo');
    BuiltValueNullFieldError.checkNotNull(
        deliveryDate, 'TryCheckout', 'deliveryDate');
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'TryCheckout', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, 'TryCheckout', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(address, 'TryCheckout', 'address');
    BuiltValueNullFieldError.checkNotNull(total, 'TryCheckout', 'total');
  }

  @override
  TryCheckout rebuild(void Function(TryCheckoutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TryCheckoutBuilder toBuilder() => new TryCheckoutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TryCheckout &&
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
                    $jc($jc($jc(0, recievers.hashCode), giftTo.hashCode),
                        deliveryDate.hashCode),
                    countryCode.hashCode),
                phoneNumber.hashCode),
            address.hashCode),
        total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TryCheckout')
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

class TryCheckoutBuilder implements Builder<TryCheckout, TryCheckoutBuilder> {
  _$TryCheckout _$v;

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

  TryCheckoutBuilder();

  TryCheckoutBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(TryCheckout other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TryCheckout;
  }

  @override
  void update(void Function(TryCheckoutBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TryCheckout build() {
    _$TryCheckout _$result;
    try {
      _$result = _$v ??
          new _$TryCheckout._(
              recievers: recievers.build(),
              giftTo: giftTo.build(),
              deliveryDate: deliveryDate.build(),
              countryCode: countryCode.build(),
              phoneNumber: phoneNumber.build(),
              address: address.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, 'TryCheckout', 'total'));
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
            'TryCheckout', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
