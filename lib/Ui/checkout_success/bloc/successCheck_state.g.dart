// GENERATED CODE - DO NOT MODIFY BY HAND

part of successCheck_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SuccessCheckoutState extends SuccessCheckoutState {
  @override
  final bool success;
  @override
  final bool successGetCheckoutID;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final HyperPayModel transactionPayment;

  factory _$SuccessCheckoutState(
          [void Function(SuccessCheckoutStateBuilder) updates]) =>
      (new SuccessCheckoutStateBuilder()..update(updates)).build();

  _$SuccessCheckoutState._(
      {this.success,
      this.successGetCheckoutID,
      this.isLoading,
      this.error,
      this.transactionPayment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, 'SuccessCheckoutState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        successGetCheckoutID, 'SuccessCheckoutState', 'successGetCheckoutID');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'SuccessCheckoutState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        error, 'SuccessCheckoutState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        transactionPayment, 'SuccessCheckoutState', 'transactionPayment');
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
        successGetCheckoutID == other.successGetCheckoutID &&
        isLoading == other.isLoading &&
        error == other.error &&
        transactionPayment == other.transactionPayment;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, success.hashCode), successGetCheckoutID.hashCode),
                isLoading.hashCode),
            error.hashCode),
        transactionPayment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SuccessCheckoutState')
          ..add('success', success)
          ..add('successGetCheckoutID', successGetCheckoutID)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('transactionPayment', transactionPayment))
        .toString();
  }
}

class SuccessCheckoutStateBuilder
    implements Builder<SuccessCheckoutState, SuccessCheckoutStateBuilder> {
  _$SuccessCheckoutState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _successGetCheckoutID;
  bool get successGetCheckoutID => _$this._successGetCheckoutID;
  set successGetCheckoutID(bool successGetCheckoutID) =>
      _$this._successGetCheckoutID = successGetCheckoutID;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  HyperPayModelBuilder _transactionPayment;
  HyperPayModelBuilder get transactionPayment =>
      _$this._transactionPayment ??= new HyperPayModelBuilder();
  set transactionPayment(HyperPayModelBuilder transactionPayment) =>
      _$this._transactionPayment = transactionPayment;

  SuccessCheckoutStateBuilder();

  SuccessCheckoutStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _successGetCheckoutID = $v.successGetCheckoutID;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _transactionPayment = $v.transactionPayment.toBuilder();
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
    _$SuccessCheckoutState _$result;
    try {
      _$result = _$v ??
          new _$SuccessCheckoutState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'SuccessCheckoutState', 'success'),
              successGetCheckoutID: BuiltValueNullFieldError.checkNotNull(
                  successGetCheckoutID,
                  'SuccessCheckoutState',
                  'successGetCheckoutID'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'SuccessCheckoutState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'SuccessCheckoutState', 'error'),
              transactionPayment: transactionPayment.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'transactionPayment';
        transactionPayment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SuccessCheckoutState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
