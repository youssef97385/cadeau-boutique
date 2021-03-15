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

  factory _$SignupState([void Function(SignupStateBuilder) updates]) =>
      (new SignupStateBuilder()..update(updates)).build();

  _$SignupState._({this.success, this.isLoading, this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'SignupState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'SignupState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'SignupState', 'error');
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
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, success.hashCode), isLoading.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignupState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error))
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

  SignupStateBuilder();

  SignupStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
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
                error, 'SignupState', 'error'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
