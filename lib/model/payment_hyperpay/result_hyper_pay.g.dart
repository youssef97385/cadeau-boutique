// GENERATED CODE - DO NOT MODIFY BY HAND

part of result_hyper_pay;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ResultHyperPay> _$resultHyperPaySerializer =
    new _$ResultHyperPaySerializer();

class _$ResultHyperPaySerializer
    implements StructuredSerializer<ResultHyperPay> {
  @override
  final Iterable<Type> types = const [ResultHyperPay, _$ResultHyperPay];
  @override
  final String wireName = 'ResultHyperPay';

  @override
  Iterable<Object> serialize(Serializers serializers, ResultHyperPay object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.desc;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ResultHyperPay deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResultHyperPayBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ResultHyperPay extends ResultHyperPay {
  @override
  final String code;
  @override
  final String desc;

  factory _$ResultHyperPay([void Function(ResultHyperPayBuilder) updates]) =>
      (new ResultHyperPayBuilder()..update(updates)).build();

  _$ResultHyperPay._({this.code, this.desc}) : super._();

  @override
  ResultHyperPay rebuild(void Function(ResultHyperPayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResultHyperPayBuilder toBuilder() =>
      new ResultHyperPayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResultHyperPay && code == other.code && desc == other.desc;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, code.hashCode), desc.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResultHyperPay')
          ..add('code', code)
          ..add('desc', desc))
        .toString();
  }
}

class ResultHyperPayBuilder
    implements Builder<ResultHyperPay, ResultHyperPayBuilder> {
  _$ResultHyperPay _$v;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  ResultHyperPayBuilder();

  ResultHyperPayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _desc = $v.desc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResultHyperPay other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResultHyperPay;
  }

  @override
  void update(void Function(ResultHyperPayBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResultHyperPay build() {
    final _$result = _$v ?? new _$ResultHyperPay._(code: code, desc: desc);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
