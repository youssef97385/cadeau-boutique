// GENERATED CODE - DO NOT MODIFY BY HAND

part of signin_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrySignin extends TrySignin {
  @override
  final String countryCode;
  @override
  final String phone;
  @override
  final String password;

  factory _$TrySignin([void Function(TrySigninBuilder) updates]) =>
      (new TrySigninBuilder()..update(updates)).build();

  _$TrySignin._({this.countryCode, this.phone, this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'TrySignin', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(phone, 'TrySignin', 'phone');
    BuiltValueNullFieldError.checkNotNull(password, 'TrySignin', 'password');
  }

  @override
  TrySignin rebuild(void Function(TrySigninBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrySigninBuilder toBuilder() => new TrySigninBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrySignin &&
        countryCode == other.countryCode &&
        phone == other.phone &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, countryCode.hashCode), phone.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrySignin')
          ..add('countryCode', countryCode)
          ..add('phone', phone)
          ..add('password', password))
        .toString();
  }
}

class TrySigninBuilder implements Builder<TrySignin, TrySigninBuilder> {
  _$TrySignin _$v;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  TrySigninBuilder();

  TrySigninBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _countryCode = $v.countryCode;
      _phone = $v.phone;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrySignin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrySignin;
  }

  @override
  void update(void Function(TrySigninBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrySignin build() {
    final _$result = _$v ??
        new _$TrySignin._(
            countryCode: BuiltValueNullFieldError.checkNotNull(
                countryCode, 'TrySignin', 'countryCode'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, 'TrySignin', 'phone'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'TrySignin', 'password'));
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

class _$InitStateSignUp extends InitStateSignUp {
  factory _$InitStateSignUp([void Function(InitStateSignUpBuilder) updates]) =>
      (new InitStateSignUpBuilder()..update(updates)).build();

  _$InitStateSignUp._() : super._();

  @override
  InitStateSignUp rebuild(void Function(InitStateSignUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitStateSignUpBuilder toBuilder() =>
      new InitStateSignUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitStateSignUp;
  }

  @override
  int get hashCode {
    return 251667680;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('InitStateSignUp').toString();
  }
}

class InitStateSignUpBuilder
    implements Builder<InitStateSignUp, InitStateSignUpBuilder> {
  _$InitStateSignUp _$v;

  InitStateSignUpBuilder();

  @override
  void replace(InitStateSignUp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InitStateSignUp;
  }

  @override
  void update(void Function(InitStateSignUpBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InitStateSignUp build() {
    final _$result = _$v ?? new _$InitStateSignUp._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
