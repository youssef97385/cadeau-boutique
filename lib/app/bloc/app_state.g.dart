// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final bool loginState;
  @override
  final int appLanguage;
  @override
  final String appLanguageString;
  @override
  final String loginType;
  @override
  final String socialToken;
  @override
  final String name;
  @override
  final String password;
  @override
  final String countryCode;
  @override
  final String phoneNumber;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.loginState,
      this.appLanguage,
      this.appLanguageString,
      this.loginType,
      this.socialToken,
      this.name,
      this.password,
      this.countryCode,
      this.phoneNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(loginState, 'AppState', 'loginState');
    BuiltValueNullFieldError.checkNotNull(
        appLanguage, 'AppState', 'appLanguage');
    BuiltValueNullFieldError.checkNotNull(
        appLanguageString, 'AppState', 'appLanguageString');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        loginState == other.loginState &&
        appLanguage == other.appLanguage &&
        appLanguageString == other.appLanguageString &&
        loginType == other.loginType &&
        socialToken == other.socialToken &&
        name == other.name &&
        password == other.password &&
        countryCode == other.countryCode &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, loginState.hashCode),
                                    appLanguage.hashCode),
                                appLanguageString.hashCode),
                            loginType.hashCode),
                        socialToken.hashCode),
                    name.hashCode),
                password.hashCode),
            countryCode.hashCode),
        phoneNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('loginState', loginState)
          ..add('appLanguage', appLanguage)
          ..add('appLanguageString', appLanguageString)
          ..add('loginType', loginType)
          ..add('socialToken', socialToken)
          ..add('name', name)
          ..add('password', password)
          ..add('countryCode', countryCode)
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  bool _loginState;
  bool get loginState => _$this._loginState;
  set loginState(bool loginState) => _$this._loginState = loginState;

  int _appLanguage;
  int get appLanguage => _$this._appLanguage;
  set appLanguage(int appLanguage) => _$this._appLanguage = appLanguage;

  String _appLanguageString;
  String get appLanguageString => _$this._appLanguageString;
  set appLanguageString(String appLanguageString) =>
      _$this._appLanguageString = appLanguageString;

  String _loginType;
  String get loginType => _$this._loginType;
  set loginType(String loginType) => _$this._loginType = loginType;

  String _socialToken;
  String get socialToken => _$this._socialToken;
  set socialToken(String socialToken) => _$this._socialToken = socialToken;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loginState = $v.loginState;
      _appLanguage = $v.appLanguage;
      _appLanguageString = $v.appLanguageString;
      _loginType = $v.loginType;
      _socialToken = $v.socialToken;
      _name = $v.name;
      _password = $v.password;
      _countryCode = $v.countryCode;
      _phoneNumber = $v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    final _$result = _$v ??
        new _$AppState._(
            loginState: BuiltValueNullFieldError.checkNotNull(
                loginState, 'AppState', 'loginState'),
            appLanguage: BuiltValueNullFieldError.checkNotNull(
                appLanguage, 'AppState', 'appLanguage'),
            appLanguageString: BuiltValueNullFieldError.checkNotNull(
                appLanguageString, 'AppState', 'appLanguageString'),
            loginType: loginType,
            socialToken: socialToken,
            name: name,
            password: password,
            countryCode: countryCode,
            phoneNumber: phoneNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
