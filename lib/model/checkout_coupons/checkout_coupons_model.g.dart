// GENERATED CODE - DO NOT MODIFY BY HAND

part of checkout_coupons_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CheckoutCoupnsModel> _$checkoutCoupnsModelSerializer =
    new _$CheckoutCoupnsModelSerializer();

class _$CheckoutCoupnsModelSerializer
    implements StructuredSerializer<CheckoutCoupnsModel> {
  @override
  final Iterable<Type> types = const [
    CheckoutCoupnsModel,
    _$CheckoutCoupnsModel
  ];
  @override
  final String wireName = 'CheckoutCoupnsModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CheckoutCoupnsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'gift_to',
      serializers.serialize(object.gift_to,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'country_code',
      serializers.serialize(object.country_code,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'phone_number',
      serializers.serialize(object.phone_number,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'brand_id',
      serializers.serialize(object.brandID, specifiedType: const FullType(int)),
      'card_id',
      serializers.serialize(object.cardID, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CheckoutCoupnsModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckoutCoupnsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'gift_to':
          result.gift_to.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'country_code':
          result.country_code.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'phone_number':
          result.phone_number.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'brand_id':
          result.brandID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'card_id':
          result.cardID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CheckoutCoupnsModel extends CheckoutCoupnsModel {
  @override
  final BuiltList<String> gift_to;
  @override
  final BuiltList<String> country_code;
  @override
  final BuiltList<String> phone_number;
  @override
  final int brandID;
  @override
  final int cardID;

  factory _$CheckoutCoupnsModel(
          [void Function(CheckoutCoupnsModelBuilder) updates]) =>
      (new CheckoutCoupnsModelBuilder()..update(updates)).build();

  _$CheckoutCoupnsModel._(
      {this.gift_to,
      this.country_code,
      this.phone_number,
      this.brandID,
      this.cardID})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        gift_to, 'CheckoutCoupnsModel', 'gift_to');
    BuiltValueNullFieldError.checkNotNull(
        country_code, 'CheckoutCoupnsModel', 'country_code');
    BuiltValueNullFieldError.checkNotNull(
        phone_number, 'CheckoutCoupnsModel', 'phone_number');
    BuiltValueNullFieldError.checkNotNull(
        brandID, 'CheckoutCoupnsModel', 'brandID');
    BuiltValueNullFieldError.checkNotNull(
        cardID, 'CheckoutCoupnsModel', 'cardID');
  }

  @override
  CheckoutCoupnsModel rebuild(
          void Function(CheckoutCoupnsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckoutCoupnsModelBuilder toBuilder() =>
      new CheckoutCoupnsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckoutCoupnsModel &&
        gift_to == other.gift_to &&
        country_code == other.country_code &&
        phone_number == other.phone_number &&
        brandID == other.brandID &&
        cardID == other.cardID;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, gift_to.hashCode), country_code.hashCode),
                phone_number.hashCode),
            brandID.hashCode),
        cardID.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckoutCoupnsModel')
          ..add('gift_to', gift_to)
          ..add('country_code', country_code)
          ..add('phone_number', phone_number)
          ..add('brandID', brandID)
          ..add('cardID', cardID))
        .toString();
  }
}

class CheckoutCoupnsModelBuilder
    implements Builder<CheckoutCoupnsModel, CheckoutCoupnsModelBuilder> {
  _$CheckoutCoupnsModel _$v;

  ListBuilder<String> _gift_to;
  ListBuilder<String> get gift_to =>
      _$this._gift_to ??= new ListBuilder<String>();
  set gift_to(ListBuilder<String> gift_to) => _$this._gift_to = gift_to;

  ListBuilder<String> _country_code;
  ListBuilder<String> get country_code =>
      _$this._country_code ??= new ListBuilder<String>();
  set country_code(ListBuilder<String> country_code) =>
      _$this._country_code = country_code;

  ListBuilder<String> _phone_number;
  ListBuilder<String> get phone_number =>
      _$this._phone_number ??= new ListBuilder<String>();
  set phone_number(ListBuilder<String> phone_number) =>
      _$this._phone_number = phone_number;

  int _brandID;
  int get brandID => _$this._brandID;
  set brandID(int brandID) => _$this._brandID = brandID;

  int _cardID;
  int get cardID => _$this._cardID;
  set cardID(int cardID) => _$this._cardID = cardID;

  CheckoutCoupnsModelBuilder();

  CheckoutCoupnsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gift_to = $v.gift_to.toBuilder();
      _country_code = $v.country_code.toBuilder();
      _phone_number = $v.phone_number.toBuilder();
      _brandID = $v.brandID;
      _cardID = $v.cardID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckoutCoupnsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckoutCoupnsModel;
  }

  @override
  void update(void Function(CheckoutCoupnsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckoutCoupnsModel build() {
    _$CheckoutCoupnsModel _$result;
    try {
      _$result = _$v ??
          new _$CheckoutCoupnsModel._(
              gift_to: gift_to.build(),
              country_code: country_code.build(),
              phone_number: phone_number.build(),
              brandID: BuiltValueNullFieldError.checkNotNull(
                  brandID, 'CheckoutCoupnsModel', 'brandID'),
              cardID: BuiltValueNullFieldError.checkNotNull(
                  cardID, 'CheckoutCoupnsModel', 'cardID'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'gift_to';
        gift_to.build();
        _$failedField = 'country_code';
        country_code.build();
        _$failedField = 'phone_number';
        phone_number.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CheckoutCoupnsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
