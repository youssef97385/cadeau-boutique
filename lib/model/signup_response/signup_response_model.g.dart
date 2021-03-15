// GENERATED CODE - DO NOT MODIFY BY HAND

part of signup_response_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SignupResponse> _$signupResponseSerializer =
    new _$SignupResponseSerializer();

class _$SignupResponseSerializer
    implements StructuredSerializer<SignupResponse> {
  @override
  final Iterable<Type> types = const [SignupResponse, _$SignupResponse];
  @override
  final String wireName = 'SignupResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, SignupResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'access_token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SignupResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignupResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'access_token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SignupResponse extends SignupResponse {
  @override
  final String token;

  factory _$SignupResponse([void Function(SignupResponseBuilder) updates]) =>
      (new SignupResponseBuilder()..update(updates)).build();

  _$SignupResponse._({this.token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(token, 'SignupResponse', 'token');
  }

  @override
  SignupResponse rebuild(void Function(SignupResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignupResponseBuilder toBuilder() =>
      new SignupResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignupResponse && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignupResponse')..add('token', token))
        .toString();
  }
}

class SignupResponseBuilder
    implements Builder<SignupResponse, SignupResponseBuilder> {
  _$SignupResponse _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  SignupResponseBuilder();

  SignupResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignupResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignupResponse;
  }

  @override
  void update(void Function(SignupResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignupResponse build() {
    final _$result = _$v ??
        new _$SignupResponse._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'SignupResponse', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
