// GENERATED CODE - DO NOT MODIFY BY HAND

part of signin_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SigninState extends SigninState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;

  factory _$SigninState([void Function(SigninStateBuilder) updates]) =>
      (new SigninStateBuilder()..update(updates)).build();

  _$SigninState._({this.success, this.isLoading, this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'SigninState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'SigninState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'SigninState', 'error');
  }

  @override
  SigninState rebuild(void Function(SigninStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SigninStateBuilder toBuilder() => new SigninStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SigninState &&
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
    return (newBuiltValueToStringHelper('SigninState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error))
        .toString();
  }
}

class SigninStateBuilder implements Builder<SigninState, SigninStateBuilder> {
  _$SigninState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  SigninStateBuilder();

  SigninStateBuilder get _$this {
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
  void replace(SigninState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SigninState;
  }

  @override
  void update(void Function(SigninStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SigninState build() {
    final _$result = _$v ??
        new _$SigninState._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'SigninState', 'success'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, 'SigninState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'SigninState', 'error'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
