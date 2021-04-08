// GENERATED CODE - DO NOT MODIFY BY HAND

part of checkout_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckoutState extends CheckoutState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<RecieverModel> recievers;

  factory _$CheckoutState([void Function(CheckoutStateBuilder) updates]) =>
      (new CheckoutStateBuilder()..update(updates)).build();

  _$CheckoutState._({this.success, this.isLoading, this.error, this.recievers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'CheckoutState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'CheckoutState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'CheckoutState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        recievers, 'CheckoutState', 'recievers');
  }

  @override
  CheckoutState rebuild(void Function(CheckoutStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckoutStateBuilder toBuilder() => new CheckoutStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckoutState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        recievers == other.recievers;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, success.hashCode), isLoading.hashCode), error.hashCode),
        recievers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckoutState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('recievers', recievers))
        .toString();
  }
}

class CheckoutStateBuilder
    implements Builder<CheckoutState, CheckoutStateBuilder> {
  _$CheckoutState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<RecieverModel> _recievers;
  ListBuilder<RecieverModel> get recievers =>
      _$this._recievers ??= new ListBuilder<RecieverModel>();
  set recievers(ListBuilder<RecieverModel> recievers) =>
      _$this._recievers = recievers;

  CheckoutStateBuilder();

  CheckoutStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _recievers = $v.recievers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckoutState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckoutState;
  }

  @override
  void update(void Function(CheckoutStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckoutState build() {
    _$CheckoutState _$result;
    try {
      _$result = _$v ??
          new _$CheckoutState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'CheckoutState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'CheckoutState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'CheckoutState', 'error'),
              recievers: recievers.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'recievers';
        recievers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CheckoutState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
