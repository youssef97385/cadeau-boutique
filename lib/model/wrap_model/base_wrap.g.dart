// GENERATED CODE - DO NOT MODIFY BY HAND

part of base_wrap;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseWrap> _$baseWrapSerializer = new _$BaseWrapSerializer();

class _$BaseWrapSerializer implements StructuredSerializer<BaseWrap> {
  @override
  final Iterable<Type> types = const [BaseWrap, _$BaseWrap];
  @override
  final String wireName = 'BaseWrap';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseWrap object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'wraps',
      serializers.serialize(object.wraps,
          specifiedType: const FullType(WrapModel)),
    ];

    return result;
  }

  @override
  BaseWrap deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseWrapBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'wraps':
          result.wraps.replace(serializers.deserialize(value,
              specifiedType: const FullType(WrapModel)) as WrapModel);
          break;
      }
    }

    return result.build();
  }
}

class _$BaseWrap extends BaseWrap {
  @override
  final WrapModel wraps;

  factory _$BaseWrap([void Function(BaseWrapBuilder) updates]) =>
      (new BaseWrapBuilder()..update(updates)).build();

  _$BaseWrap._({this.wraps}) : super._() {
    BuiltValueNullFieldError.checkNotNull(wraps, 'BaseWrap', 'wraps');
  }

  @override
  BaseWrap rebuild(void Function(BaseWrapBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseWrapBuilder toBuilder() => new BaseWrapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseWrap && wraps == other.wraps;
  }

  @override
  int get hashCode {
    return $jf($jc(0, wraps.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseWrap')..add('wraps', wraps))
        .toString();
  }
}

class BaseWrapBuilder implements Builder<BaseWrap, BaseWrapBuilder> {
  _$BaseWrap _$v;

  WrapModelBuilder _wraps;
  WrapModelBuilder get wraps => _$this._wraps ??= new WrapModelBuilder();
  set wraps(WrapModelBuilder wraps) => _$this._wraps = wraps;

  BaseWrapBuilder();

  BaseWrapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wraps = $v.wraps.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseWrap other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BaseWrap;
  }

  @override
  void update(void Function(BaseWrapBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseWrap build() {
    _$BaseWrap _$result;
    try {
      _$result = _$v ?? new _$BaseWrap._(wraps: wraps.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'wraps';
        wraps.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BaseWrap', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
