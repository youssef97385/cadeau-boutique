// GENERATED CODE - DO NOT MODIFY BY HAND

part of hyper_pay_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HyperPayModel> _$hyperPayModelSerializer =
    new _$HyperPayModelSerializer();

class _$HyperPayModelSerializer implements StructuredSerializer<HyperPayModel> {
  @override
  final Iterable<Type> types = const [HyperPayModel, _$HyperPayModel];
  @override
  final String wireName = 'HyperPayModel';

  @override
  Iterable<Object> serialize(Serializers serializers, HyperPayModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ResultHyperPay)));
    }
    value = object.buildNumber;
    if (value != null) {
      result
        ..add('buildNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ndc;
    if (value != null) {
      result
        ..add('ndc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  HyperPayModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HyperPayModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'result':
          result.result.replace(serializers.deserialize(value,
              specifiedType: const FullType(ResultHyperPay)) as ResultHyperPay);
          break;
        case 'buildNumber':
          result.buildNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ndc':
          result.ndc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HyperPayModel extends HyperPayModel {
  @override
  final ResultHyperPay result;
  @override
  final String buildNumber;
  @override
  final String timestamp;
  @override
  final String ndc;
  @override
  final String id;

  factory _$HyperPayModel([void Function(HyperPayModelBuilder) updates]) =>
      (new HyperPayModelBuilder()..update(updates)).build();

  _$HyperPayModel._(
      {this.result, this.buildNumber, this.timestamp, this.ndc, this.id})
      : super._();

  @override
  HyperPayModel rebuild(void Function(HyperPayModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HyperPayModelBuilder toBuilder() => new HyperPayModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HyperPayModel &&
        result == other.result &&
        buildNumber == other.buildNumber &&
        timestamp == other.timestamp &&
        ndc == other.ndc &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, result.hashCode), buildNumber.hashCode),
                timestamp.hashCode),
            ndc.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HyperPayModel')
          ..add('result', result)
          ..add('buildNumber', buildNumber)
          ..add('timestamp', timestamp)
          ..add('ndc', ndc)
          ..add('id', id))
        .toString();
  }
}

class HyperPayModelBuilder
    implements Builder<HyperPayModel, HyperPayModelBuilder> {
  _$HyperPayModel _$v;

  ResultHyperPayBuilder _result;
  ResultHyperPayBuilder get result =>
      _$this._result ??= new ResultHyperPayBuilder();
  set result(ResultHyperPayBuilder result) => _$this._result = result;

  String _buildNumber;
  String get buildNumber => _$this._buildNumber;
  set buildNumber(String buildNumber) => _$this._buildNumber = buildNumber;

  String _timestamp;
  String get timestamp => _$this._timestamp;
  set timestamp(String timestamp) => _$this._timestamp = timestamp;

  String _ndc;
  String get ndc => _$this._ndc;
  set ndc(String ndc) => _$this._ndc = ndc;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  HyperPayModelBuilder();

  HyperPayModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result?.toBuilder();
      _buildNumber = $v.buildNumber;
      _timestamp = $v.timestamp;
      _ndc = $v.ndc;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HyperPayModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HyperPayModel;
  }

  @override
  void update(void Function(HyperPayModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HyperPayModel build() {
    _$HyperPayModel _$result;
    try {
      _$result = _$v ??
          new _$HyperPayModel._(
              result: _result?.build(),
              buildNumber: buildNumber,
              timestamp: timestamp,
              ndc: ndc,
              id: id);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HyperPayModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
