// GENERATED CODE - DO NOT MODIFY BY HAND

part of signup_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignupState extends SignupState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final String smsCode;
  @override
  final bool openHomepage;

  factory _$SignupState([void Function(SignupStateBuilder) updates]) =>
      (new SignupStateBuilder()..update(updates)).build();

  _$SignupState._(
      {this.success,
      this.isLoading,
      this.error,
      this.smsCode,
      this.openHomepage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'SignupState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'SignupState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'SignupState', 'error');
    BuiltValueNullFieldError.checkNotNull(smsCode, 'SignupState', 'smsCode');
    BuiltValueNullFieldError.checkNotNull(
        openHomepage, 'SignupState', 'openHomepage');
  }

  @override
  SignupState rebuild(void Function(SignupStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignupStateBuilder toBuilder() => new SignupStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignupState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        smsCode == other.smsCode &&
        openHomepage == other.openHomepage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, success.hashCode), isLoading.hashCode),
                error.hashCode),
            smsCode.hashCode),
        openHomepage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignupState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('smsCode', smsCode)
          ..add('openHomepage', openHomepage))
        .toString();
  }
}

class SignupStateBuilder implements Builder<SignupState, SignupStateBuilder> {
  _$SignupState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  String _smsCode;
  String get smsCode => _$this._smsCode;
  set smsCode(String smsCode) => _$this._smsCode = smsCode;

  bool _openHomepage;
  bool get openHomepage => _$this._openHomepage;
  set openHomepage(bool openHomepage) => _$this._openHomepage = openHomepage;

  SignupStateBuilder();

  SignupStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _smsCode = $v.smsCode;
      _openHomepage = $v.openHomepage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignupState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignupState;
  }

  @override
  void update(void Function(SignupStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignupState build() {
    final _$result = _$v ??
        new _$SignupState._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'SignupState', 'success'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, 'SignupState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'SignupState', 'error'),
            smsCode: BuiltValueNullFieldError.checkNotNull(
                smsCode, 'SignupState', 'smsCode'),
            openHomepage: BuiltValueNullFieldError.checkNotNull(
                openHomepage, 'SignupState', 'openHomepage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
