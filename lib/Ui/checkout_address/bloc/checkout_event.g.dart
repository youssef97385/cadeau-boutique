// GENERATED CODE - DO NOT MODIFY BY HAND

part of checkout_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddReciever extends AddReciever {
  @override
  final String giftTo;
  @override
  final String deliveryDate;
  @override
  final String countryCode;
  @override
  final String phoneNumber;

  factory _$AddReciever([void Function(AddRecieverBuilder) updates]) =>
      (new AddRecieverBuilder()..update(updates)).build();

  _$AddReciever._(
      {this.giftTo, this.deliveryDate, this.countryCode, this.phoneNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(giftTo, 'AddReciever', 'giftTo');
    BuiltValueNullFieldError.checkNotNull(
        deliveryDate, 'AddReciever', 'deliveryDate');
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'AddReciever', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, 'AddReciever', 'phoneNumber');
  }

  @override
  AddReciever rebuild(void Function(AddRecieverBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddRecieverBuilder toBuilder() => new AddRecieverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddReciever &&
        giftTo == other.giftTo &&
        deliveryDate == other.deliveryDate &&
        countryCode == other.countryCode &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, giftTo.hashCode), deliveryDate.hashCode),
            countryCode.hashCode),
        phoneNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddReciever')
          ..add('giftTo', giftTo)
          ..add('deliveryDate', deliveryDate)
          ..add('countryCode', countryCode)
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class AddRecieverBuilder implements Builder<AddReciever, AddRecieverBuilder> {
  _$AddReciever _$v;

  String _giftTo;
  String get giftTo => _$this._giftTo;
  set giftTo(String giftTo) => _$this._giftTo = giftTo;

  String _deliveryDate;
  String get deliveryDate => _$this._deliveryDate;
  set deliveryDate(String deliveryDate) => _$this._deliveryDate = deliveryDate;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  AddRecieverBuilder();

  AddRecieverBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _giftTo = $v.giftTo;
      _deliveryDate = $v.deliveryDate;
      _countryCode = $v.countryCode;
      _phoneNumber = $v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddReciever other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddReciever;
  }

  @override
  void update(void Function(AddRecieverBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddReciever build() {
    final _$result = _$v ??
        new _$AddReciever._(
            giftTo: BuiltValueNullFieldError.checkNotNull(
                giftTo, 'AddReciever', 'giftTo'),
            deliveryDate: BuiltValueNullFieldError.checkNotNull(
                deliveryDate, 'AddReciever', 'deliveryDate'),
            countryCode: BuiltValueNullFieldError.checkNotNull(
                countryCode, 'AddReciever', 'countryCode'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, 'AddReciever', 'phoneNumber'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
