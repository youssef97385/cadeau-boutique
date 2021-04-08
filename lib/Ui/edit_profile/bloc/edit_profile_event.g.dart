// GENERATED CODE - DO NOT MODIFY BY HAND

part of edit_profile_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TryEditProfile extends TryEditProfile {
  @override
  final String countryCode;
  @override
  final String phone;
  @override
  final String gender;
  @override
  final String name;
  @override
  final String date_of_birth;
  @override
  final String email;

  factory _$TryEditProfile([void Function(TryEditProfileBuilder) updates]) =>
      (new TryEditProfileBuilder()..update(updates)).build();

  _$TryEditProfile._(
      {this.countryCode,
      this.phone,
      this.gender,
      this.name,
      this.date_of_birth,
      this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'TryEditProfile', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(phone, 'TryEditProfile', 'phone');
    BuiltValueNullFieldError.checkNotNull(gender, 'TryEditProfile', 'gender');
    BuiltValueNullFieldError.checkNotNull(name, 'TryEditProfile', 'name');
    BuiltValueNullFieldError.checkNotNull(
        date_of_birth, 'TryEditProfile', 'date_of_birth');
    BuiltValueNullFieldError.checkNotNull(email, 'TryEditProfile', 'email');
  }

  @override
  TryEditProfile rebuild(void Function(TryEditProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TryEditProfileBuilder toBuilder() =>
      new TryEditProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TryEditProfile &&
        countryCode == other.countryCode &&
        phone == other.phone &&
        gender == other.gender &&
        name == other.name &&
        date_of_birth == other.date_of_birth &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, countryCode.hashCode), phone.hashCode),
                    gender.hashCode),
                name.hashCode),
            date_of_birth.hashCode),
        email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TryEditProfile')
          ..add('countryCode', countryCode)
          ..add('phone', phone)
          ..add('gender', gender)
          ..add('name', name)
          ..add('date_of_birth', date_of_birth)
          ..add('email', email))
        .toString();
  }
}

class TryEditProfileBuilder
    implements Builder<TryEditProfile, TryEditProfileBuilder> {
  _$TryEditProfile _$v;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _date_of_birth;
  String get date_of_birth => _$this._date_of_birth;
  set date_of_birth(String date_of_birth) =>
      _$this._date_of_birth = date_of_birth;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  TryEditProfileBuilder();

  TryEditProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _countryCode = $v.countryCode;
      _phone = $v.phone;
      _gender = $v.gender;
      _name = $v.name;
      _date_of_birth = $v.date_of_birth;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TryEditProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TryEditProfile;
  }

  @override
  void update(void Function(TryEditProfileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TryEditProfile build() {
    final _$result = _$v ??
        new _$TryEditProfile._(
            countryCode: BuiltValueNullFieldError.checkNotNull(
                countryCode, 'TryEditProfile', 'countryCode'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, 'TryEditProfile', 'phone'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, 'TryEditProfile', 'gender'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'TryEditProfile', 'name'),
            date_of_birth: BuiltValueNullFieldError.checkNotNull(
                date_of_birth, 'TryEditProfile', 'date_of_birth'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'TryEditProfile', 'email'));
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
