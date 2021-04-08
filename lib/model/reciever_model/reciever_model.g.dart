// GENERATED CODE - DO NOT MODIFY BY HAND

part of reciever_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecieverModel> _$recieverModelSerializer =
    new _$RecieverModelSerializer();

class _$RecieverModelSerializer implements StructuredSerializer<RecieverModel> {
  @override
  final Iterable<Type> types = const [RecieverModel, _$RecieverModel];
  @override
  final String wireName = 'RecieverModel';

  @override
  Iterable<Object> serialize(Serializers serializers, RecieverModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'giftTo',
      serializers.serialize(object.giftTo,
          specifiedType: const FullType(String)),
      'deliveryDate',
      serializers.serialize(object.deliveryDate,
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
  RecieverModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecieverModelBuilder();

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
        case 'deliveryDate':
          result.deliveryDate = serializers.deserialize(value,
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

class _$RecieverModel extends RecieverModel {
  @override
  final String giftTo;
  @override
  final String deliveryDate;
  @override
  final String countryCode;
  @override
  final String phoneNumber;

  factory _$RecieverModel([void Function(RecieverModelBuilder) updates]) =>
      (new RecieverModelBuilder()..update(updates)).build();

  _$RecieverModel._(
      {this.giftTo, this.deliveryDate, this.countryCode, this.phoneNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(giftTo, 'RecieverModel', 'giftTo');
    BuiltValueNullFieldError.checkNotNull(
        deliveryDate, 'RecieverModel', 'deliveryDate');
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'RecieverModel', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, 'RecieverModel', 'phoneNumber');
  }

  @override
  RecieverModel rebuild(void Function(RecieverModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecieverModelBuilder toBuilder() => new RecieverModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecieverModel &&
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
    return (newBuiltValueToStringHelper('RecieverModel')
          ..add('giftTo', giftTo)
          ..add('deliveryDate', deliveryDate)
          ..add('countryCode', countryCode)
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class RecieverModelBuilder
    implements Builder<RecieverModel, RecieverModelBuilder> {
  _$RecieverModel _$v;

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

  RecieverModelBuilder();

  RecieverModelBuilder get _$this {
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
  void replace(RecieverModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecieverModel;
  }

  @override
  void update(void Function(RecieverModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RecieverModel build() {
    final _$result = _$v ??
        new _$RecieverModel._(
            giftTo: BuiltValueNullFieldError.checkNotNull(
                giftTo, 'RecieverModel', 'giftTo'),
            deliveryDate: BuiltValueNullFieldError.checkNotNull(
                deliveryDate, 'RecieverModel', 'deliveryDate'),
            countryCode: BuiltValueNullFieldError.checkNotNull(
                countryCode, 'RecieverModel', 'countryCode'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, 'RecieverModel', 'phoneNumber'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
