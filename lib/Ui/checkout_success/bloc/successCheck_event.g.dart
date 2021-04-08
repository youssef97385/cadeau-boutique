// GENERATED CODE - DO NOT MODIFY BY HAND

part of successCheck_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TryCheckout extends TryCheckout {
  @override
  final BuiltList<RecieverModel> recievers;

  factory _$TryCheckout([void Function(TryCheckoutBuilder) updates]) =>
      (new TryCheckoutBuilder()..update(updates)).build();

  _$TryCheckout._({this.recievers}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        recievers, 'TryCheckout', 'recievers');
  }

  @override
  TryCheckout rebuild(void Function(TryCheckoutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TryCheckoutBuilder toBuilder() => new TryCheckoutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TryCheckout && recievers == other.recievers;
  }

  @override
  int get hashCode {
    return $jf($jc(0, recievers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TryCheckout')
          ..add('recievers', recievers))
        .toString();
  }
}

class TryCheckoutBuilder implements Builder<TryCheckout, TryCheckoutBuilder> {
  _$TryCheckout _$v;

  ListBuilder<RecieverModel> _recievers;
  ListBuilder<RecieverModel> get recievers =>
      _$this._recievers ??= new ListBuilder<RecieverModel>();
  set recievers(ListBuilder<RecieverModel> recievers) =>
      _$this._recievers = recievers;

  TryCheckoutBuilder();

  TryCheckoutBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recievers = $v.recievers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TryCheckout other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TryCheckout;
  }

  @override
  void update(void Function(TryCheckoutBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TryCheckout build() {
    _$TryCheckout _$result;
    try {
      _$result = _$v ?? new _$TryCheckout._(recievers: recievers.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'recievers';
        recievers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TryCheckout', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
