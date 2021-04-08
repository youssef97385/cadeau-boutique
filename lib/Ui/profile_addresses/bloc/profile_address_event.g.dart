// GENERATED CODE - DO NOT MODIFY BY HAND

part of profile_address_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProfileAddressRequset extends ProfileAddressRequset {
  @override
  final String city;
  @override
  final String state;
  @override
  final String zip_code;
  @override
  final String address;

  factory _$ProfileAddressRequset(
          [void Function(ProfileAddressRequsetBuilder) updates]) =>
      (new ProfileAddressRequsetBuilder()..update(updates)).build();

  _$ProfileAddressRequset._(
      {this.city, this.state, this.zip_code, this.address})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        city, 'ProfileAddressRequset', 'city');
    BuiltValueNullFieldError.checkNotNull(
        state, 'ProfileAddressRequset', 'state');
    BuiltValueNullFieldError.checkNotNull(
        zip_code, 'ProfileAddressRequset', 'zip_code');
    BuiltValueNullFieldError.checkNotNull(
        address, 'ProfileAddressRequset', 'address');
  }

  @override
  ProfileAddressRequset rebuild(
          void Function(ProfileAddressRequsetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileAddressRequsetBuilder toBuilder() =>
      new ProfileAddressRequsetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileAddressRequset &&
        city == other.city &&
        state == other.state &&
        zip_code == other.zip_code &&
        address == other.address;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, city.hashCode), state.hashCode), zip_code.hashCode),
        address.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProfileAddressRequset')
          ..add('city', city)
          ..add('state', state)
          ..add('zip_code', zip_code)
          ..add('address', address))
        .toString();
  }
}

class ProfileAddressRequsetBuilder
    implements Builder<ProfileAddressRequset, ProfileAddressRequsetBuilder> {
  _$ProfileAddressRequset _$v;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _zip_code;
  String get zip_code => _$this._zip_code;
  set zip_code(String zip_code) => _$this._zip_code = zip_code;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  ProfileAddressRequsetBuilder();

  ProfileAddressRequsetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _city = $v.city;
      _state = $v.state;
      _zip_code = $v.zip_code;
      _address = $v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileAddressRequset other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfileAddressRequset;
  }

  @override
  void update(void Function(ProfileAddressRequsetBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProfileAddressRequset build() {
    final _$result = _$v ??
        new _$ProfileAddressRequset._(
            city: BuiltValueNullFieldError.checkNotNull(
                city, 'ProfileAddressRequset', 'city'),
            state: BuiltValueNullFieldError.checkNotNull(
                state, 'ProfileAddressRequset', 'state'),
            zip_code: BuiltValueNullFieldError.checkNotNull(
                zip_code, 'ProfileAddressRequset', 'zip_code'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, 'ProfileAddressRequset', 'address'));
    replace(_$result);
    return _$result;
  }
}

class _$ClearError extends ClearError {
  factory _$ClearError([void Function(ClearErrorBuilder) updates]) =>
      (new ClearErrorBuilder()..update(updates)).build();

  _$ClearError._() : super._();

  @override
  ClearError rebuild(void Function(ClearErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearErrorBuilder toBuilder() => new ClearErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearError;
  }

  @override
  int get hashCode {
    return 507656265;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearError').toString();
  }
}

class ClearErrorBuilder implements Builder<ClearError, ClearErrorBuilder> {
  _$ClearError _$v;

  ClearErrorBuilder();

  @override
  void replace(ClearError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearError;
  }

  @override
  void update(void Function(ClearErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearError build() {
    final _$result = _$v ?? new _$ClearError._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
