// GENERATED CODE - DO NOT MODIFY BY HAND

part of sent_cards_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SentCardModel> _$sentCardModelSerializer =
    new _$SentCardModelSerializer();

class _$SentCardModelSerializer implements StructuredSerializer<SentCardModel> {
  @override
  final Iterable<Type> types = const [SentCardModel, _$SentCardModel];
  @override
  final String wireName = 'SentCardModel';

  @override
  Iterable<Object> serialize(Serializers serializers, SentCardModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.senderID;
    if (value != null) {
      result
        ..add('sender_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reciverID;
    if (value != null) {
      result
        ..add('reciver_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.senderCountryCode;
    if (value != null) {
      result
        ..add('sender_country_code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.senderPhoneNumber;
    if (value != null) {
      result
        ..add('sender_phone_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reciverCountryCode;
    if (value != null) {
      result
        ..add('reciver_country_code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reciverPhoneNumber;
    if (value != null) {
      result
        ..add('reciver_phone_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cardID;
    if (value != null) {
      result
        ..add('card_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.brandID;
    if (value != null) {
      result
        ..add('brand_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cardNumber;
    if (value != null) {
      result
        ..add('card_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proccessStatus;
    if (value != null) {
      result
        ..add('process_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.keyQr;
    if (value != null) {
      result
        ..add('key_qr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scannerID;
    if (value != null) {
      result
        ..add('scanner_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.scannedAt;
    if (value != null) {
      result
        ..add('scanned_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sender;
    if (value != null) {
      result
        ..add('sender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserInfoModel)));
    }
    value = object.revicer;
    if (value != null) {
      result
        ..add('reciver')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserInfoModel)));
    }
    value = object.brand;
    if (value != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BrandModel)));
    }
    value = object.card;
    if (value != null) {
      result
        ..add('card')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CouponListModel)));
    }
    return result;
  }

  @override
  SentCardModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SentCardModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sender_id':
          result.senderID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reciver_id':
          result.reciverID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sender_country_code':
          result.senderCountryCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sender_phone_number':
          result.senderPhoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reciver_country_code':
          result.reciverCountryCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reciver_phone_number':
          result.reciverPhoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'card_id':
          result.cardID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'brand_id':
          result.brandID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'card_number':
          result.cardNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'process_status':
          result.proccessStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'key_qr':
          result.keyQr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scanner_id':
          result.scannerID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'scanned_at':
          result.scannedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sender':
          result.sender.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserInfoModel)) as UserInfoModel);
          break;
        case 'reciver':
          result.revicer.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserInfoModel)) as UserInfoModel);
          break;
        case 'brand':
          result.brand.replace(serializers.deserialize(value,
              specifiedType: const FullType(BrandModel)) as BrandModel);
          break;
        case 'card':
          result.card.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CouponListModel))
              as CouponListModel);
          break;
      }
    }

    return result.build();
  }
}

class _$SentCardModel extends SentCardModel {
  @override
  final int id;
  @override
  final int senderID;
  @override
  final int reciverID;
  @override
  final int senderCountryCode;
  @override
  final int senderPhoneNumber;
  @override
  final int reciverCountryCode;
  @override
  final int reciverPhoneNumber;
  @override
  final int cardID;
  @override
  final int brandID;
  @override
  final String cardNumber;
  @override
  final String proccessStatus;
  @override
  final String keyQr;
  @override
  final String createdAt;
  @override
  final int scannerID;
  @override
  final String scannedAt;
  @override
  final UserInfoModel sender;
  @override
  final UserInfoModel revicer;
  @override
  final BrandModel brand;
  @override
  final CouponListModel card;

  factory _$SentCardModel([void Function(SentCardModelBuilder) updates]) =>
      (new SentCardModelBuilder()..update(updates)).build();

  _$SentCardModel._(
      {this.id,
      this.senderID,
      this.reciverID,
      this.senderCountryCode,
      this.senderPhoneNumber,
      this.reciverCountryCode,
      this.reciverPhoneNumber,
      this.cardID,
      this.brandID,
      this.cardNumber,
      this.proccessStatus,
      this.keyQr,
      this.createdAt,
      this.scannerID,
      this.scannedAt,
      this.sender,
      this.revicer,
      this.brand,
      this.card})
      : super._();

  @override
  SentCardModel rebuild(void Function(SentCardModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SentCardModelBuilder toBuilder() => new SentCardModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SentCardModel &&
        id == other.id &&
        senderID == other.senderID &&
        reciverID == other.reciverID &&
        senderCountryCode == other.senderCountryCode &&
        senderPhoneNumber == other.senderPhoneNumber &&
        reciverCountryCode == other.reciverCountryCode &&
        reciverPhoneNumber == other.reciverPhoneNumber &&
        cardID == other.cardID &&
        brandID == other.brandID &&
        cardNumber == other.cardNumber &&
        proccessStatus == other.proccessStatus &&
        keyQr == other.keyQr &&
        createdAt == other.createdAt &&
        scannerID == other.scannerID &&
        scannedAt == other.scannedAt &&
        sender == other.sender &&
        revicer == other.revicer &&
        brand == other.brand &&
        card == other.card;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                id
                                                                                    .hashCode),
                                                                            senderID
                                                                                .hashCode),
                                                                        reciverID
                                                                            .hashCode),
                                                                    senderCountryCode
                                                                        .hashCode),
                                                                senderPhoneNumber
                                                                    .hashCode),
                                                            reciverCountryCode
                                                                .hashCode),
                                                        reciverPhoneNumber
                                                            .hashCode),
                                                    cardID.hashCode),
                                                brandID.hashCode),
                                            cardNumber.hashCode),
                                        proccessStatus.hashCode),
                                    keyQr.hashCode),
                                createdAt.hashCode),
                            scannerID.hashCode),
                        scannedAt.hashCode),
                    sender.hashCode),
                revicer.hashCode),
            brand.hashCode),
        card.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SentCardModel')
          ..add('id', id)
          ..add('senderID', senderID)
          ..add('reciverID', reciverID)
          ..add('senderCountryCode', senderCountryCode)
          ..add('senderPhoneNumber', senderPhoneNumber)
          ..add('reciverCountryCode', reciverCountryCode)
          ..add('reciverPhoneNumber', reciverPhoneNumber)
          ..add('cardID', cardID)
          ..add('brandID', brandID)
          ..add('cardNumber', cardNumber)
          ..add('proccessStatus', proccessStatus)
          ..add('keyQr', keyQr)
          ..add('createdAt', createdAt)
          ..add('scannerID', scannerID)
          ..add('scannedAt', scannedAt)
          ..add('sender', sender)
          ..add('revicer', revicer)
          ..add('brand', brand)
          ..add('card', card))
        .toString();
  }
}

class SentCardModelBuilder
    implements Builder<SentCardModel, SentCardModelBuilder> {
  _$SentCardModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _senderID;
  int get senderID => _$this._senderID;
  set senderID(int senderID) => _$this._senderID = senderID;

  int _reciverID;
  int get reciverID => _$this._reciverID;
  set reciverID(int reciverID) => _$this._reciverID = reciverID;

  int _senderCountryCode;
  int get senderCountryCode => _$this._senderCountryCode;
  set senderCountryCode(int senderCountryCode) =>
      _$this._senderCountryCode = senderCountryCode;

  int _senderPhoneNumber;
  int get senderPhoneNumber => _$this._senderPhoneNumber;
  set senderPhoneNumber(int senderPhoneNumber) =>
      _$this._senderPhoneNumber = senderPhoneNumber;

  int _reciverCountryCode;
  int get reciverCountryCode => _$this._reciverCountryCode;
  set reciverCountryCode(int reciverCountryCode) =>
      _$this._reciverCountryCode = reciverCountryCode;

  int _reciverPhoneNumber;
  int get reciverPhoneNumber => _$this._reciverPhoneNumber;
  set reciverPhoneNumber(int reciverPhoneNumber) =>
      _$this._reciverPhoneNumber = reciverPhoneNumber;

  int _cardID;
  int get cardID => _$this._cardID;
  set cardID(int cardID) => _$this._cardID = cardID;

  int _brandID;
  int get brandID => _$this._brandID;
  set brandID(int brandID) => _$this._brandID = brandID;

  String _cardNumber;
  String get cardNumber => _$this._cardNumber;
  set cardNumber(String cardNumber) => _$this._cardNumber = cardNumber;

  String _proccessStatus;
  String get proccessStatus => _$this._proccessStatus;
  set proccessStatus(String proccessStatus) =>
      _$this._proccessStatus = proccessStatus;

  String _keyQr;
  String get keyQr => _$this._keyQr;
  set keyQr(String keyQr) => _$this._keyQr = keyQr;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  int _scannerID;
  int get scannerID => _$this._scannerID;
  set scannerID(int scannerID) => _$this._scannerID = scannerID;

  String _scannedAt;
  String get scannedAt => _$this._scannedAt;
  set scannedAt(String scannedAt) => _$this._scannedAt = scannedAt;

  UserInfoModelBuilder _sender;
  UserInfoModelBuilder get sender =>
      _$this._sender ??= new UserInfoModelBuilder();
  set sender(UserInfoModelBuilder sender) => _$this._sender = sender;

  UserInfoModelBuilder _revicer;
  UserInfoModelBuilder get revicer =>
      _$this._revicer ??= new UserInfoModelBuilder();
  set revicer(UserInfoModelBuilder revicer) => _$this._revicer = revicer;

  BrandModelBuilder _brand;
  BrandModelBuilder get brand => _$this._brand ??= new BrandModelBuilder();
  set brand(BrandModelBuilder brand) => _$this._brand = brand;

  CouponListModelBuilder _card;
  CouponListModelBuilder get card =>
      _$this._card ??= new CouponListModelBuilder();
  set card(CouponListModelBuilder card) => _$this._card = card;

  SentCardModelBuilder();

  SentCardModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _senderID = $v.senderID;
      _reciverID = $v.reciverID;
      _senderCountryCode = $v.senderCountryCode;
      _senderPhoneNumber = $v.senderPhoneNumber;
      _reciverCountryCode = $v.reciverCountryCode;
      _reciverPhoneNumber = $v.reciverPhoneNumber;
      _cardID = $v.cardID;
      _brandID = $v.brandID;
      _cardNumber = $v.cardNumber;
      _proccessStatus = $v.proccessStatus;
      _keyQr = $v.keyQr;
      _createdAt = $v.createdAt;
      _scannerID = $v.scannerID;
      _scannedAt = $v.scannedAt;
      _sender = $v.sender?.toBuilder();
      _revicer = $v.revicer?.toBuilder();
      _brand = $v.brand?.toBuilder();
      _card = $v.card?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SentCardModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SentCardModel;
  }

  @override
  void update(void Function(SentCardModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SentCardModel build() {
    _$SentCardModel _$result;
    try {
      _$result = _$v ??
          new _$SentCardModel._(
              id: id,
              senderID: senderID,
              reciverID: reciverID,
              senderCountryCode: senderCountryCode,
              senderPhoneNumber: senderPhoneNumber,
              reciverCountryCode: reciverCountryCode,
              reciverPhoneNumber: reciverPhoneNumber,
              cardID: cardID,
              brandID: brandID,
              cardNumber: cardNumber,
              proccessStatus: proccessStatus,
              keyQr: keyQr,
              createdAt: createdAt,
              scannerID: scannerID,
              scannedAt: scannedAt,
              sender: _sender?.build(),
              revicer: _revicer?.build(),
              brand: _brand?.build(),
              card: _card?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sender';
        _sender?.build();
        _$failedField = 'revicer';
        _revicer?.build();
        _$failedField = 'brand';
        _brand?.build();
        _$failedField = 'card';
        _card?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SentCardModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
