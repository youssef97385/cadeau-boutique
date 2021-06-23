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

class _$TryCheckOutCoupons extends TryCheckOutCoupons {
  @override
  final BuiltList<String> giftTo;
  @override
  final BuiltList<ReciverCouponsModel> recievers;
  @override
  final BuiltList<String> countryCode;
  @override
  final BuiltList<String> phoneNumber;
  @override
  final int bradnId;
  @override
  final int itemId;

  factory _$TryCheckOutCoupons(
          [void Function(TryCheckOutCouponsBuilder) updates]) =>
      (new TryCheckOutCouponsBuilder()..update(updates)).build();

  _$TryCheckOutCoupons._(
      {this.giftTo,
      this.recievers,
      this.countryCode,
      this.phoneNumber,
      this.bradnId,
      this.itemId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        giftTo, 'TryCheckOutCoupons', 'giftTo');
    BuiltValueNullFieldError.checkNotNull(
        recievers, 'TryCheckOutCoupons', 'recievers');
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'TryCheckOutCoupons', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, 'TryCheckOutCoupons', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(
        bradnId, 'TryCheckOutCoupons', 'bradnId');
    BuiltValueNullFieldError.checkNotNull(
        itemId, 'TryCheckOutCoupons', 'itemId');
  }

  @override
  TryCheckOutCoupons rebuild(
          void Function(TryCheckOutCouponsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TryCheckOutCouponsBuilder toBuilder() =>
      new TryCheckOutCouponsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TryCheckOutCoupons &&
        giftTo == other.giftTo &&
        recievers == other.recievers &&
        countryCode == other.countryCode &&
        phoneNumber == other.phoneNumber &&
        bradnId == other.bradnId &&
        itemId == other.itemId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, giftTo.hashCode), recievers.hashCode),
                    countryCode.hashCode),
                phoneNumber.hashCode),
            bradnId.hashCode),
        itemId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TryCheckOutCoupons')
          ..add('giftTo', giftTo)
          ..add('recievers', recievers)
          ..add('countryCode', countryCode)
          ..add('phoneNumber', phoneNumber)
          ..add('bradnId', bradnId)
          ..add('itemId', itemId))
        .toString();
  }
}

class TryCheckOutCouponsBuilder
    implements Builder<TryCheckOutCoupons, TryCheckOutCouponsBuilder> {
  _$TryCheckOutCoupons _$v;

  ListBuilder<String> _giftTo;
  ListBuilder<String> get giftTo =>
      _$this._giftTo ??= new ListBuilder<String>();
  set giftTo(ListBuilder<String> giftTo) => _$this._giftTo = giftTo;

  ListBuilder<ReciverCouponsModel> _recievers;
  ListBuilder<ReciverCouponsModel> get recievers =>
      _$this._recievers ??= new ListBuilder<ReciverCouponsModel>();
  set recievers(ListBuilder<ReciverCouponsModel> recievers) =>
      _$this._recievers = recievers;

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

  int _bradnId;
  int get bradnId => _$this._bradnId;
  set bradnId(int bradnId) => _$this._bradnId = bradnId;

  int _itemId;
  int get itemId => _$this._itemId;
  set itemId(int itemId) => _$this._itemId = itemId;

  TryCheckOutCouponsBuilder();

  TryCheckOutCouponsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _giftTo = $v.giftTo.toBuilder();
      _recievers = $v.recievers.toBuilder();
      _countryCode = $v.countryCode.toBuilder();
      _phoneNumber = $v.phoneNumber.toBuilder();
      _bradnId = $v.bradnId;
      _itemId = $v.itemId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TryCheckOutCoupons other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TryCheckOutCoupons;
  }

  @override
  void update(void Function(TryCheckOutCouponsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TryCheckOutCoupons build() {
    _$TryCheckOutCoupons _$result;
    try {
      _$result = _$v ??
          new _$TryCheckOutCoupons._(
              giftTo: giftTo.build(),
              recievers: recievers.build(),
              countryCode: countryCode.build(),
              phoneNumber: phoneNumber.build(),
              bradnId: BuiltValueNullFieldError.checkNotNull(
                  bradnId, 'TryCheckOutCoupons', 'bradnId'),
              itemId: BuiltValueNullFieldError.checkNotNull(
                  itemId, 'TryCheckOutCoupons', 'itemId'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'giftTo';
        giftTo.build();
        _$failedField = 'recievers';
        recievers.build();
        _$failedField = 'countryCode';
        countryCode.build();
        _$failedField = 'phoneNumber';
        phoneNumber.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TryCheckOutCoupons', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetCheckoutID extends GetCheckoutID {
  @override
  final String totla;
  @override
  final String people;
  @override
  final String paymentType;

  factory _$GetCheckoutID([void Function(GetCheckoutIDBuilder) updates]) =>
      (new GetCheckoutIDBuilder()..update(updates)).build();

  _$GetCheckoutID._({this.totla, this.people, this.paymentType}) : super._() {
    BuiltValueNullFieldError.checkNotNull(totla, 'GetCheckoutID', 'totla');
    BuiltValueNullFieldError.checkNotNull(people, 'GetCheckoutID', 'people');
    BuiltValueNullFieldError.checkNotNull(
        paymentType, 'GetCheckoutID', 'paymentType');
  }

  @override
  GetCheckoutID rebuild(void Function(GetCheckoutIDBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCheckoutIDBuilder toBuilder() => new GetCheckoutIDBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCheckoutID &&
        totla == other.totla &&
        people == other.people &&
        paymentType == other.paymentType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, totla.hashCode), people.hashCode), paymentType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetCheckoutID')
          ..add('totla', totla)
          ..add('people', people)
          ..add('paymentType', paymentType))
        .toString();
  }
}

class GetCheckoutIDBuilder
    implements Builder<GetCheckoutID, GetCheckoutIDBuilder> {
  _$GetCheckoutID _$v;

  String _totla;
  String get totla => _$this._totla;
  set totla(String totla) => _$this._totla = totla;

  String _people;
  String get people => _$this._people;
  set people(String people) => _$this._people = people;

  String _paymentType;
  String get paymentType => _$this._paymentType;
  set paymentType(String paymentType) => _$this._paymentType = paymentType;

  GetCheckoutIDBuilder();

  GetCheckoutIDBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totla = $v.totla;
      _people = $v.people;
      _paymentType = $v.paymentType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCheckoutID other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCheckoutID;
  }

  @override
  void update(void Function(GetCheckoutIDBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCheckoutID build() {
    final _$result = _$v ??
        new _$GetCheckoutID._(
            totla: BuiltValueNullFieldError.checkNotNull(
                totla, 'GetCheckoutID', 'totla'),
            people: BuiltValueNullFieldError.checkNotNull(
                people, 'GetCheckoutID', 'people'),
            paymentType: BuiltValueNullFieldError.checkNotNull(
                paymentType, 'GetCheckoutID', 'paymentType'));
    replace(_$result);
    return _$result;
  }
}

class _$ClearSuccessID extends ClearSuccessID {
  factory _$ClearSuccessID([void Function(ClearSuccessIDBuilder) updates]) =>
      (new ClearSuccessIDBuilder()..update(updates)).build();

  _$ClearSuccessID._() : super._();

  @override
  ClearSuccessID rebuild(void Function(ClearSuccessIDBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearSuccessIDBuilder toBuilder() =>
      new ClearSuccessIDBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearSuccessID;
  }

  @override
  int get hashCode {
    return 862782567;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearSuccessID').toString();
  }
}

class ClearSuccessIDBuilder
    implements Builder<ClearSuccessID, ClearSuccessIDBuilder> {
  _$ClearSuccessID _$v;

  ClearSuccessIDBuilder();

  @override
  void replace(ClearSuccessID other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearSuccessID;
  }

  @override
  void update(void Function(ClearSuccessIDBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearSuccessID build() {
    final _$result = _$v ?? new _$ClearSuccessID._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
