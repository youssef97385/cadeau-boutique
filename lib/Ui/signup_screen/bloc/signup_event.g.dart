// GENERATED CODE - DO NOT MODIFY BY HAND

part of signup_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrySignup extends TrySignup {
  @override
  final String countryCode;
  @override
  final String phone;
  @override
  final String gender;
  @override
  final String name;
  @override
  final String password;
  @override
  final String smsCode;

  factory _$TrySignup([void Function(TrySignupBuilder) updates]) =>
      (new TrySignupBuilder()..update(updates)).build();

  _$TrySignup._(
      {this.countryCode,
      this.phone,
      this.gender,
      this.name,
      this.password,
      this.smsCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'TrySignup', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(phone, 'TrySignup', 'phone');
    BuiltValueNullFieldError.checkNotNull(gender, 'TrySignup', 'gender');
    BuiltValueNullFieldError.checkNotNull(name, 'TrySignup', 'name');
    BuiltValueNullFieldError.checkNotNull(password, 'TrySignup', 'password');
    BuiltValueNullFieldError.checkNotNull(smsCode, 'TrySignup', 'smsCode');
  }

  @override
  TrySignup rebuild(void Function(TrySignupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrySignupBuilder toBuilder() => new TrySignupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrySignup &&
        countryCode == other.countryCode &&
        phone == other.phone &&
        gender == other.gender &&
        name == other.name &&
        password == other.password &&
        smsCode == other.smsCode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, countryCode.hashCode), phone.hashCode),
                    gender.hashCode),
                name.hashCode),
            password.hashCode),
        smsCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrySignup')
          ..add('countryCode', countryCode)
          ..add('phone', phone)
          ..add('gender', gender)
          ..add('name', name)
          ..add('password', password)
          ..add('smsCode', smsCode))
        .toString();
  }
}

class TrySignupBuilder implements Builder<TrySignup, TrySignupBuilder> {
  _$TrySignup _$v;

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

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _smsCode;
  String get smsCode => _$this._smsCode;
  set smsCode(String smsCode) => _$this._smsCode = smsCode;

  TrySignupBuilder();

  TrySignupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _countryCode = $v.countryCode;
      _phone = $v.phone;
      _gender = $v.gender;
      _name = $v.name;
      _password = $v.password;
      _smsCode = $v.smsCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrySignup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrySignup;
  }

  @override
  void update(void Function(TrySignupBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrySignup build() {
    final _$result = _$v ??
        new _$TrySignup._(
            countryCode: BuiltValueNullFieldError.checkNotNull(
                countryCode, 'TrySignup', 'countryCode'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, 'TrySignup', 'phone'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, 'TrySignup', 'gender'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'TrySignup', 'name'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'TrySignup', 'password'),
            smsCode: BuiltValueNullFieldError.checkNotNull(
                smsCode, 'TrySignup', 'smsCode'));
    replace(_$result);
    return _$result;
  }
}

class _$TrySocialSignin extends TrySocialSignin {
  @override
  final String phoneNumber;
  @override
  final String name;
  @override
  final String socialToken;

  factory _$TrySocialSignin([void Function(TrySocialSigninBuilder) updates]) =>
      (new TrySocialSigninBuilder()..update(updates)).build();

  _$TrySocialSignin._({this.phoneNumber, this.name, this.socialToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, 'TrySocialSignin', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(name, 'TrySocialSignin', 'name');
    BuiltValueNullFieldError.checkNotNull(
        socialToken, 'TrySocialSignin', 'socialToken');
  }

  @override
  TrySocialSignin rebuild(void Function(TrySocialSigninBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrySocialSigninBuilder toBuilder() =>
      new TrySocialSigninBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrySocialSignin &&
        phoneNumber == other.phoneNumber &&
        name == other.name &&
        socialToken == other.socialToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, phoneNumber.hashCode), name.hashCode),
        socialToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrySocialSignin')
          ..add('phoneNumber', phoneNumber)
          ..add('name', name)
          ..add('socialToken', socialToken))
        .toString();
  }
}

class TrySocialSigninBuilder
    implements Builder<TrySocialSignin, TrySocialSigninBuilder> {
  _$TrySocialSignin _$v;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _socialToken;
  String get socialToken => _$this._socialToken;
  set socialToken(String socialToken) => _$this._socialToken = socialToken;

  TrySocialSigninBuilder();

  TrySocialSigninBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phoneNumber = $v.phoneNumber;
      _name = $v.name;
      _socialToken = $v.socialToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrySocialSignin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrySocialSignin;
  }

  @override
  void update(void Function(TrySocialSigninBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrySocialSignin build() {
    final _$result = _$v ??
        new _$TrySocialSignin._(
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, 'TrySocialSignin', 'phoneNumber'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'TrySocialSignin', 'name'),
            socialToken: BuiltValueNullFieldError.checkNotNull(
                socialToken, 'TrySocialSignin', 'socialToken'));
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

class _$TryCheckPhone extends TryCheckPhone {
  @override
  final String countryCode;
  @override
  final String phone;

  factory _$TryCheckPhone([void Function(TryCheckPhoneBuilder) updates]) =>
      (new TryCheckPhoneBuilder()..update(updates)).build();

  _$TryCheckPhone._({this.countryCode, this.phone}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'TryCheckPhone', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(phone, 'TryCheckPhone', 'phone');
  }

  @override
  TryCheckPhone rebuild(void Function(TryCheckPhoneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TryCheckPhoneBuilder toBuilder() => new TryCheckPhoneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TryCheckPhone &&
        countryCode == other.countryCode &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, countryCode.hashCode), phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TryCheckPhone')
          ..add('countryCode', countryCode)
          ..add('phone', phone))
        .toString();
  }
}

class TryCheckPhoneBuilder
    implements Builder<TryCheckPhone, TryCheckPhoneBuilder> {
  _$TryCheckPhone _$v;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  TryCheckPhoneBuilder();

  TryCheckPhoneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _countryCode = $v.countryCode;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TryCheckPhone other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TryCheckPhone;
  }

  @override
  void update(void Function(TryCheckPhoneBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TryCheckPhone build() {
    final _$result = _$v ??
        new _$TryCheckPhone._(
            countryCode: BuiltValueNullFieldError.checkNotNull(
                countryCode, 'TryCheckPhone', 'countryCode'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, 'TryCheckPhone', 'phone'));
    replace(_$result);
    return _$result;
  }
}

class _$TrySendSms extends TrySendSms {
  @override
  final String countryCode;
  @override
  final String phone;

  factory _$TrySendSms([void Function(TrySendSmsBuilder) updates]) =>
      (new TrySendSmsBuilder()..update(updates)).build();

  _$TrySendSms._({this.countryCode, this.phone}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'TrySendSms', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(phone, 'TrySendSms', 'phone');
  }

  @override
  TrySendSms rebuild(void Function(TrySendSmsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrySendSmsBuilder toBuilder() => new TrySendSmsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrySendSms &&
        countryCode == other.countryCode &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, countryCode.hashCode), phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrySendSms')
          ..add('countryCode', countryCode)
          ..add('phone', phone))
        .toString();
  }
}

class TrySendSmsBuilder implements Builder<TrySendSms, TrySendSmsBuilder> {
  _$TrySendSms _$v;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  TrySendSmsBuilder();

  TrySendSmsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _countryCode = $v.countryCode;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrySendSms other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrySendSms;
  }

  @override
  void update(void Function(TrySendSmsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrySendSms build() {
    final _$result = _$v ??
        new _$TrySendSms._(
            countryCode: BuiltValueNullFieldError.checkNotNull(
                countryCode, 'TrySendSms', 'countryCode'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, 'TrySendSms', 'phone'));
    replace(_$result);
    return _$result;
  }
}

class _$ResetSignUp extends ResetSignUp {
  factory _$ResetSignUp([void Function(ResetSignUpBuilder) updates]) =>
      (new ResetSignUpBuilder()..update(updates)).build();

  _$ResetSignUp._() : super._();

  @override
  ResetSignUp rebuild(void Function(ResetSignUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetSignUpBuilder toBuilder() => new ResetSignUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetSignUp;
  }

  @override
  int get hashCode {
    return 1063799197;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ResetSignUp').toString();
  }
}

class ResetSignUpBuilder implements Builder<ResetSignUp, ResetSignUpBuilder> {
  _$ResetSignUp _$v;

  ResetSignUpBuilder();

  @override
  void replace(ResetSignUp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetSignUp;
  }

  @override
  void update(void Function(ResetSignUpBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResetSignUp build() {
    final _$result = _$v ?? new _$ResetSignUp._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
