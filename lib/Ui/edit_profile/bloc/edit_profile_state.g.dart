// GENERATED CODE - DO NOT MODIFY BY HAND

part of edit_profile_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditProfileState extends EditProfileState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final String name;
  @override
  final String email;
  @override
  final String gender;
  @override
  final String countryCode;
  @override
  final String accountStatus;
  @override
  final int phoneNumber;
  @override
  final String dateBirth;

  factory _$EditProfileState(
          [void Function(EditProfileStateBuilder) updates]) =>
      (new EditProfileStateBuilder()..update(updates)).build();

  _$EditProfileState._(
      {this.success,
      this.isLoading,
      this.error,
      this.name,
      this.email,
      this.gender,
      this.countryCode,
      this.accountStatus,
      this.phoneNumber,
      this.dateBirth})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, 'EditProfileState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'EditProfileState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'EditProfileState', 'error');
  }

  @override
  EditProfileState rebuild(void Function(EditProfileStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditProfileStateBuilder toBuilder() =>
      new EditProfileStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditProfileState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        name == other.name &&
        email == other.email &&
        gender == other.gender &&
        countryCode == other.countryCode &&
        accountStatus == other.accountStatus &&
        phoneNumber == other.phoneNumber &&
        dateBirth == other.dateBirth;
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
                                $jc(
                                    $jc($jc(0, success.hashCode),
                                        isLoading.hashCode),
                                    error.hashCode),
                                name.hashCode),
                            email.hashCode),
                        gender.hashCode),
                    countryCode.hashCode),
                accountStatus.hashCode),
            phoneNumber.hashCode),
        dateBirth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EditProfileState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('name', name)
          ..add('email', email)
          ..add('gender', gender)
          ..add('countryCode', countryCode)
          ..add('accountStatus', accountStatus)
          ..add('phoneNumber', phoneNumber)
          ..add('dateBirth', dateBirth))
        .toString();
  }
}

class EditProfileStateBuilder
    implements Builder<EditProfileState, EditProfileStateBuilder> {
  _$EditProfileState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _accountStatus;
  String get accountStatus => _$this._accountStatus;
  set accountStatus(String accountStatus) =>
      _$this._accountStatus = accountStatus;

  int _phoneNumber;
  int get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _dateBirth;
  String get dateBirth => _$this._dateBirth;
  set dateBirth(String dateBirth) => _$this._dateBirth = dateBirth;

  EditProfileStateBuilder();

  EditProfileStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _name = $v.name;
      _email = $v.email;
      _gender = $v.gender;
      _countryCode = $v.countryCode;
      _accountStatus = $v.accountStatus;
      _phoneNumber = $v.phoneNumber;
      _dateBirth = $v.dateBirth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditProfileState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditProfileState;
  }

  @override
  void update(void Function(EditProfileStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EditProfileState build() {
    final _$result = _$v ??
        new _$EditProfileState._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'EditProfileState', 'success'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, 'EditProfileState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'EditProfileState', 'error'),
            name: name,
            email: email,
            gender: gender,
            countryCode: countryCode,
            accountStatus: accountStatus,
            phoneNumber: phoneNumber,
            dateBirth: dateBirth);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
