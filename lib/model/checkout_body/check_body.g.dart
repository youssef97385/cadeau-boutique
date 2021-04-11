// GENERATED CODE - DO NOT MODIFY BY HAND

part of check_body;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CheckBody> _$checkBodySerializer = new _$CheckBodySerializer();

class _$CheckBodySerializer implements StructuredSerializer<CheckBody> {
  @override
  final Iterable<Type> types = const [CheckBody, _$CheckBody];
  @override
  final String wireName = 'CheckBody';

  @override
  Iterable<Object> serialize(Serializers serializers, CheckBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'gift_to',
      serializers.serialize(object.gift_to,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'address',
      serializers.serialize(object.address,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'delivery_date',
      serializers.serialize(object.delivery_date,
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
      'total_cost',
      serializers.serialize(object.total_cost,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CheckBody deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckBodyBuilder();

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
        case 'address':
          result.address.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'delivery_date':
          result.delivery_date.replace(serializers.deserialize(value,
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
        case 'total_cost':
          result.total_cost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CheckBody extends CheckBody {
  @override
  final BuiltList<String> gift_to;
  @override
  final BuiltList<String> address;
  @override
  final BuiltList<String> delivery_date;
  @override
  final BuiltList<String> country_code;
  @override
  final BuiltList<String> phone_number;
  @override
  final String total_cost;

  factory _$CheckBody([void Function(CheckBodyBuilder) updates]) =>
      (new CheckBodyBuilder()..update(updates)).build();

  _$CheckBody._(
      {this.gift_to,
      this.address,
      this.delivery_date,
      this.country_code,
      this.phone_number,
      this.total_cost})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(gift_to, 'CheckBody', 'gift_to');
    BuiltValueNullFieldError.checkNotNull(address, 'CheckBody', 'address');
    BuiltValueNullFieldError.checkNotNull(
        delivery_date, 'CheckBody', 'delivery_date');
    BuiltValueNullFieldError.checkNotNull(
        country_code, 'CheckBody', 'country_code');
    BuiltValueNullFieldError.checkNotNull(
        phone_number, 'CheckBody', 'phone_number');
    BuiltValueNullFieldError.checkNotNull(
        total_cost, 'CheckBody', 'total_cost');
  }

  @override
  CheckBody rebuild(void Function(CheckBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckBodyBuilder toBuilder() => new CheckBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckBody &&
        gift_to == other.gift_to &&
        address == other.address &&
        delivery_date == other.delivery_date &&
        country_code == other.country_code &&
        phone_number == other.phone_number &&
        total_cost == other.total_cost;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, gift_to.hashCode), address.hashCode),
                    delivery_date.hashCode),
                country_code.hashCode),
            phone_number.hashCode),
        total_cost.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckBody')
          ..add('gift_to', gift_to)
          ..add('address', address)
          ..add('delivery_date', delivery_date)
          ..add('country_code', country_code)
          ..add('phone_number', phone_number)
          ..add('total_cost', total_cost))
        .toString();
  }
}

class CheckBodyBuilder implements Builder<CheckBody, CheckBodyBuilder> {
  _$CheckBody _$v;

  ListBuilder<String> _gift_to;
  ListBuilder<String> get gift_to =>
      _$this._gift_to ??= new ListBuilder<String>();
  set gift_to(ListBuilder<String> gift_to) => _$this._gift_to = gift_to;

  ListBuilder<String> _address;
  ListBuilder<String> get address =>
      _$this._address ??= new ListBuilder<String>();
  set address(ListBuilder<String> address) => _$this._address = address;

  ListBuilder<String> _delivery_date;
  ListBuilder<String> get delivery_date =>
      _$this._delivery_date ??= new ListBuilder<String>();
  set delivery_date(ListBuilder<String> delivery_date) =>
      _$this._delivery_date = delivery_date;

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

  String _total_cost;
  String get total_cost => _$this._total_cost;
  set total_cost(String total_cost) => _$this._total_cost = total_cost;

  CheckBodyBuilder();

  CheckBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gift_to = $v.gift_to.toBuilder();
      _address = $v.address.toBuilder();
      _delivery_date = $v.delivery_date.toBuilder();
      _country_code = $v.country_code.toBuilder();
      _phone_number = $v.phone_number.toBuilder();
      _total_cost = $v.total_cost;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckBody;
  }

  @override
  void update(void Function(CheckBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckBody build() {
    _$CheckBody _$result;
    try {
      _$result = _$v ??
          new _$CheckBody._(
              gift_to: gift_to.build(),
              address: address.build(),
              delivery_date: delivery_date.build(),
              country_code: country_code.build(),
              phone_number: phone_number.build(),
              total_cost: BuiltValueNullFieldError.checkNotNull(
                  total_cost, 'CheckBody', 'total_cost'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'gift_to';
        gift_to.build();
        _$failedField = 'address';
        address.build();
        _$failedField = 'delivery_date';
        delivery_date.build();
        _$failedField = 'country_code';
        country_code.build();
        _$failedField = 'phone_number';
        phone_number.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CheckBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
