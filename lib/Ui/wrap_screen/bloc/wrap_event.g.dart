// GENERATED CODE - DO NOT MODIFY BY HAND

part of wrap_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetWrap extends GetWrap {
  @override
  final int id;

  factory _$GetWrap([void Function(GetWrapBuilder) updates]) =>
      (new GetWrapBuilder()..update(updates)).build();

  _$GetWrap._({this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GetWrap', 'id');
  }

  @override
  GetWrap rebuild(void Function(GetWrapBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetWrapBuilder toBuilder() => new GetWrapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetWrap && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetWrap')..add('id', id)).toString();
  }
}

class GetWrapBuilder implements Builder<GetWrap, GetWrapBuilder> {
  _$GetWrap _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  GetWrapBuilder();

  GetWrapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetWrap other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetWrap;
  }

  @override
  void update(void Function(GetWrapBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetWrap build() {
    final _$result = _$v ??
        new _$GetWrap._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'GetWrap', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
