// GENERATED CODE - DO NOT MODIFY BY HAND

part of reciver_coupons_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReciverCouponsModel> _$reciverCouponsModelSerializer =
    new _$ReciverCouponsModelSerializer();

class _$ReciverCouponsModelSerializer
    implements StructuredSerializer<ReciverCouponsModel> {
  @override
  final Iterable<Type> types = const [
    ReciverCouponsModel,
    _$ReciverCouponsModel
  ];
  @override
  final String wireName = 'ReciverCouponsModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReciverCouponsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'giftTo',
      serializers.serialize(object.giftTo,
          specifiedType: const FullType(String)),
      'countryCode',
      serializers.serialize(object.countryCode,
          specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ReciverCouponsModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReciverCouponsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'giftTo':
          result.giftTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'countryCode':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReciverCouponsModel extends ReciverCouponsModel {
  @override
  final String giftTo;
  @override
  final String countryCode;
  @override
  final String phoneNumber;

  factory _$ReciverCouponsModel(
          [void Function(ReciverCouponsModelBuilder) updates]) =>
      (new ReciverCouponsModelBuilder()..update(updates)).build();

  _$ReciverCouponsModel._({this.giftTo, this.countryCode, this.phoneNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        giftTo, 'ReciverCouponsModel', 'giftTo');
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'ReciverCouponsModel', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, 'ReciverCouponsModel', 'phoneNumber');
  }

  @override
  ReciverCouponsModel rebuild(
          void Function(ReciverCouponsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReciverCouponsModelBuilder toBuilder() =>
      new ReciverCouponsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReciverCouponsModel &&
        giftTo == other.giftTo &&
        countryCode == other.countryCode &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, giftTo.hashCode), countryCode.hashCode),
        phoneNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReciverCouponsModel')
          ..add('giftTo', giftTo)
          ..add('countryCode', countryCode)
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class ReciverCouponsModelBuilder
    implements Builder<ReciverCouponsModel, ReciverCouponsModelBuilder> {
  _$ReciverCouponsModel _$v;

  String _giftTo;
  String get giftTo => _$this._giftTo;
  set giftTo(String giftTo) => _$this._giftTo = giftTo;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  ReciverCouponsModelBuilder();

  ReciverCouponsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _giftTo = $v.giftTo;
      _countryCode = $v.countryCode;
      _phoneNumber = $v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReciverCouponsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReciverCouponsModel;
  }

  @override
  void update(void Function(ReciverCouponsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReciverCouponsModel build() {
    final _$result = _$v ??
        new _$ReciverCouponsModel._(
            giftTo: BuiltValueNullFieldError.checkNotNull(
                giftTo, 'ReciverCouponsModel', 'giftTo'),
            countryCode: BuiltValueNullFieldError.checkNotNull(
                countryCode, 'ReciverCouponsModel', 'countryCode'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, 'ReciverCouponsModel', 'phoneNumber'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
