// GENERATED CODE - DO NOT MODIFY BY HAND

part of successCheck_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SuccessCheckoutState extends SuccessCheckoutState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;

  factory _$SuccessCheckoutState(
          [void Function(SuccessCheckoutStateBuilder) updates]) =>
      (new SuccessCheckoutStateBuilder()..update(updates)).build();

  _$SuccessCheckoutState._({this.success, this.isLoading, this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, 'SuccessCheckoutState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'SuccessCheckoutState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        error, 'SuccessCheckoutState', 'error');
  }

  @override
  SuccessCheckoutState rebuild(
          void Function(SuccessCheckoutStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessCheckoutStateBuilder toBuilder() =>
      new SuccessCheckoutStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessCheckoutState &&
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
    return (newBuiltValueToStringHelper('SuccessCheckoutState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error))
        .toString();
  }
}

class SuccessCheckoutStateBuilder
    implements Builder<SuccessCheckoutState, SuccessCheckoutStateBuilder> {
  _$SuccessCheckoutState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  SuccessCheckoutStateBuilder();

  SuccessCheckoutStateBuilder get _$this {
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
  void replace(SuccessCheckoutState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuccessCheckoutState;
  }

  @override
  void update(void Function(SuccessCheckoutStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SuccessCheckoutState build() {
    final _$result = _$v ??
        new _$SuccessCheckoutState._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'SuccessCheckoutState', 'success'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, 'SuccessCheckoutState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'SuccessCheckoutState', 'error'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
