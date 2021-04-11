// GENERATED CODE - DO NOT MODIFY BY HAND

part of details_user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DetailsUser> _$detailsUserSerializer = new _$DetailsUserSerializer();

class _$DetailsUserSerializer implements StructuredSerializer<DetailsUser> {
  @override
  final Iterable<Type> types = const [DetailsUser, _$DetailsUser];
  @override
  final String wireName = 'DetailsUser';

  @override
  Iterable<Object> serialize(Serializers serializers, DetailsUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressDetails;
    if (value != null) {
      result
        ..add('address_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.zip;
    if (value != null) {
      result
        ..add('zip_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DetailsUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DetailsUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address_details':
          result.addressDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zip_code':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DetailsUser extends DetailsUser {
  @override
  final String city;
  @override
  final String state;
  @override
  final String addressDetails;
  @override
  final String zip;

  factory _$DetailsUser([void Function(DetailsUserBuilder) updates]) =>
      (new DetailsUserBuilder()..update(updates)).build();

  _$DetailsUser._({this.city, this.state, this.addressDetails, this.zip})
      : super._();

  @override
  DetailsUser rebuild(void Function(DetailsUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailsUserBuilder toBuilder() => new DetailsUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailsUser &&
        city == other.city &&
        state == other.state &&
        addressDetails == other.addressDetails &&
        zip == other.zip;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, city.hashCode), state.hashCode),
            addressDetails.hashCode),
        zip.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailsUser')
          ..add('city', city)
          ..add('state', state)
          ..add('addressDetails', addressDetails)
          ..add('zip', zip))
        .toString();
  }
}

class DetailsUserBuilder implements Builder<DetailsUser, DetailsUserBuilder> {
  _$DetailsUser _$v;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _addressDetails;
  String get addressDetails => _$this._addressDetails;
  set addressDetails(String addressDetails) =>
      _$this._addressDetails = addressDetails;

  String _zip;
  String get zip => _$this._zip;
  set zip(String zip) => _$this._zip = zip;

  DetailsUserBuilder();

  DetailsUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _city = $v.city;
      _state = $v.state;
      _addressDetails = $v.addressDetails;
      _zip = $v.zip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailsUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetailsUser;
  }

  @override
  void update(void Function(DetailsUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailsUser build() {
    final _$result = _$v ??
        new _$DetailsUser._(
            city: city, state: state, addressDetails: addressDetails, zip: zip);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
