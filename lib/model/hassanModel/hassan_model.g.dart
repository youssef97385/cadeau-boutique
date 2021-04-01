// GENERATED CODE - DO NOT MODIFY BY HAND

part of hassan_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HassanModel extends HassanModel {
  @override
  final int pagr;

  factory _$HassanModel([void Function(HassanModelBuilder) updates]) =>
      (new HassanModelBuilder()..update(updates)).build();

  _$HassanModel._({this.pagr}) : super._() {
    BuiltValueNullFieldError.checkNotNull(pagr, 'HassanModel', 'pagr');
  }

  @override
  HassanModel rebuild(void Function(HassanModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HassanModelBuilder toBuilder() => new HassanModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HassanModel && pagr == other.pagr;
  }

  @override
  int get hashCode {
    return $jf($jc(0, pagr.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HassanModel')..add('pagr', pagr))
        .toString();
  }
}

class HassanModelBuilder implements Builder<HassanModel, HassanModelBuilder> {
  _$HassanModel _$v;

  int _pagr;
  int get pagr => _$this._pagr;
  set pagr(int pagr) => _$this._pagr = pagr;

  HassanModelBuilder();

  HassanModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pagr = $v.pagr;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HassanModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HassanModel;
  }

  @override
  void update(void Function(HassanModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HassanModel build() {
    final _$result = _$v ??
        new _$HassanModel._(
            pagr: BuiltValueNullFieldError.checkNotNull(
                pagr, 'HassanModel', 'pagr'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
