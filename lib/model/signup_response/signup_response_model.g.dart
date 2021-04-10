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
    Object value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserInfoModel)));
    }
    value = object.detaisl;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DetailsUser)));
    }
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
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserInfoModel)) as UserInfoModel);
          break;
        case 'details':
          result.detaisl.replace(serializers.deserialize(value,
              specifiedType: const FullType(DetailsUser)) as DetailsUser);
          break;
      }
    }

    return result.build();
  }
}

class _$SignupResponse extends SignupResponse {
  @override
  final String token;
  @override
  final UserInfoModel user;
  @override
  final DetailsUser detaisl;

  factory _$SignupResponse([void Function(SignupResponseBuilder) updates]) =>
      (new SignupResponseBuilder()..update(updates)).build();

  _$SignupResponse._({this.token, this.user, this.detaisl}) : super._() {
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
    return other is SignupResponse &&
        token == other.token &&
        user == other.user &&
        detaisl == other.detaisl;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, token.hashCode), user.hashCode), detaisl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignupResponse')
          ..add('token', token)
          ..add('user', user)
          ..add('detaisl', detaisl))
        .toString();
  }
}

class SignupResponseBuilder
    implements Builder<SignupResponse, SignupResponseBuilder> {
  _$SignupResponse _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  UserInfoModelBuilder _user;
  UserInfoModelBuilder get user => _$this._user ??= new UserInfoModelBuilder();
  set user(UserInfoModelBuilder user) => _$this._user = user;

  DetailsUserBuilder _detaisl;
  DetailsUserBuilder get detaisl =>
      _$this._detaisl ??= new DetailsUserBuilder();
  set detaisl(DetailsUserBuilder detaisl) => _$this._detaisl = detaisl;

  SignupResponseBuilder();

  SignupResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _user = $v.user?.toBuilder();
      _detaisl = $v.detaisl?.toBuilder();
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
    _$SignupResponse _$result;
    try {
      _$result = _$v ??
          new _$SignupResponse._(
              token: BuiltValueNullFieldError.checkNotNull(
                  token, 'SignupResponse', 'token'),
              user: _user?.build(),
              detaisl: _detaisl?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'detaisl';
        _detaisl?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SignupResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
