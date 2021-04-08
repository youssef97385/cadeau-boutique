// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_info_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserInfoModel> _$userInfoModelSerializer =
    new _$UserInfoModelSerializer();

class _$UserInfoModelSerializer implements StructuredSerializer<UserInfoModel> {
  @override
  final Iterable<Type> types = const [UserInfoModel, _$UserInfoModel];
  @override
  final String wireName = 'UserInfoModel';

  @override
  Iterable<Object> serialize(Serializers serializers, UserInfoModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'user_type',
      serializers.serialize(object.userType,
          specifiedType: const FullType(String)),
    ];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countryCode;
    if (value != null) {
      result
        ..add('country_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accountStatus;
    if (value != null) {
      result
        ..add('account_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dateBirth;
    if (value != null) {
      result
        ..add('date_of_birth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserInfoModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserInfoModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_type':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country_code':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'account_status':
          result.accountStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date_of_birth':
          result.dateBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserInfoModel extends UserInfoModel {
  @override
  final String name;
  @override
  final String email;
  @override
  final String userType;
  @override
  final String gender;
  @override
  final String countryCode;
  @override
  final String accountStatus;
  @override
  final int phoneNumber;
  @override
  final String dateBirth;

  factory _$UserInfoModel([void Function(UserInfoModelBuilder) updates]) =>
      (new UserInfoModelBuilder()..update(updates)).build();

  _$UserInfoModel._(
      {this.name,
      this.email,
      this.userType,
      this.gender,
      this.countryCode,
      this.accountStatus,
      this.phoneNumber,
      this.dateBirth})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userType, 'UserInfoModel', 'userType');
  }

  @override
  UserInfoModel rebuild(void Function(UserInfoModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoModelBuilder toBuilder() => new UserInfoModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfoModel &&
        name == other.name &&
        email == other.email &&
        userType == other.userType &&
        gender == other.gender &&
        countryCode == other.countryCode &&
        accountStatus == other.accountStatus &&
        phoneNumber == other.phoneNumber &&
        dateBirth == other.dateBirth;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), email.hashCode),
                            userType.hashCode),
                        gender.hashCode),
                    countryCode.hashCode),
                accountStatus.hashCode),
            phoneNumber.hashCode),
        dateBirth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserInfoModel')
          ..add('name', name)
          ..add('email', email)
          ..add('userType', userType)
          ..add('gender', gender)
          ..add('countryCode', countryCode)
          ..add('accountStatus', accountStatus)
          ..add('phoneNumber', phoneNumber)
          ..add('dateBirth', dateBirth))
        .toString();
  }
}

class UserInfoModelBuilder
    implements Builder<UserInfoModel, UserInfoModelBuilder> {
  _$UserInfoModel _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _userType;
  String get userType => _$this._userType;
  set userType(String userType) => _$this._userType = userType;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _accountStatus;
  String get accountStatus => _$this._accountStatus;
  set accountStatus(String accountStatus) =>
      _$this._accountStatus = accountStatus;

  int _phoneNumber;
  int get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _dateBirth;
  String get dateBirth => _$this._dateBirth;
  set dateBirth(String dateBirth) => _$this._dateBirth = dateBirth;

  UserInfoModelBuilder();

  UserInfoModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _userType = $v.userType;
      _gender = $v.gender;
      _countryCode = $v.countryCode;
      _accountStatus = $v.accountStatus;
      _phoneNumber = $v.phoneNumber;
      _dateBirth = $v.dateBirth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfoModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserInfoModel;
  }

  @override
  void update(void Function(UserInfoModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserInfoModel build() {
    final _$result = _$v ??
        new _$UserInfoModel._(
            name: name,
            email: email,
            userType: BuiltValueNullFieldError.checkNotNull(
                userType, 'UserInfoModel', 'userType'),
            gender: gender,
            countryCode: countryCode,
            accountStatus: accountStatus,
            phoneNumber: phoneNumber,
            dateBirth: dateBirth);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
