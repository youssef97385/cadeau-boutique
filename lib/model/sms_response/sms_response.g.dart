// GENERATED CODE - DO NOT MODIFY BY HAND

part of sms_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SmsResponse> _$smsResponseSerializer = new _$SmsResponseSerializer();

class _$SmsResponseSerializer implements StructuredSerializer<SmsResponse> {
  @override
  final Iterable<Type> types = const [SmsResponse, _$SmsResponse];
  @override
  final String wireName = 'SmsResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, SmsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SmsResponse deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SmsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SmsResponse extends SmsResponse {
  @override
  final int data;
  @override
  final String message;

  factory _$SmsResponse([void Function(SmsResponseBuilder) updates]) =>
      (new SmsResponseBuilder()..update(updates)).build();

  _$SmsResponse._({this.data, this.message}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, 'SmsResponse', 'data');
    BuiltValueNullFieldError.checkNotNull(message, 'SmsResponse', 'message');
  }

  @override
  SmsResponse rebuild(void Function(SmsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SmsResponseBuilder toBuilder() => new SmsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SmsResponse &&
        data == other.data &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SmsResponse')
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class SmsResponseBuilder implements Builder<SmsResponse, SmsResponseBuilder> {
  _$SmsResponse _$v;

  int _data;
  int get data => _$this._data;
  set data(int data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  SmsResponseBuilder();

  SmsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SmsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SmsResponse;
  }

  @override
  void update(void Function(SmsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SmsResponse build() {
    final _$result = _$v ??
        new _$SmsResponse._(
            data: BuiltValueNullFieldError.checkNotNull(
                data, 'SmsResponse', 'data'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'SmsResponse', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
