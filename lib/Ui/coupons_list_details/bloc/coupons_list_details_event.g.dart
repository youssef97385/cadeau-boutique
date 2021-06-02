// GENERATED CODE - DO NOT MODIFY BY HAND

part of coupons_list_details_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCouponsEvent extends GetCouponsEvent {
  factory _$GetCouponsEvent([void Function(GetCouponsEventBuilder) updates]) =>
      (new GetCouponsEventBuilder()..update(updates)).build();

  _$GetCouponsEvent._() : super._();

  @override
  GetCouponsEvent rebuild(void Function(GetCouponsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCouponsEventBuilder toBuilder() =>
      new GetCouponsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCouponsEvent;
  }

  @override
  int get hashCode {
    return 609392028;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetCouponsEvent').toString();
  }
}

class GetCouponsEventBuilder
    implements Builder<GetCouponsEvent, GetCouponsEventBuilder> {
  _$GetCouponsEvent _$v;

  GetCouponsEventBuilder();

  @override
  void replace(GetCouponsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCouponsEvent;
  }

  @override
  void update(void Function(GetCouponsEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCouponsEvent build() {
    final _$result = _$v ?? new _$GetCouponsEvent._();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
