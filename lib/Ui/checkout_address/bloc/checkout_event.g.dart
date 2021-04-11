// GENERATED CODE - DO NOT MODIFY BY HAND

part of checkout_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddReciever extends AddReciever {
  @override
  final String giftTo;
  @override
  final String deliveryDate;
  @override
  final String countryCode;
  @override
  final String phoneNumber;
  @override
  final String address;

  factory _$AddReciever([void Function(AddRecieverBuilder) updates]) =>
      (new AddRecieverBuilder()..update(updates)).build();

  _$AddReciever._(
      {this.giftTo,
      this.deliveryDate,
      this.countryCode,
      this.phoneNumber,
      this.address})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(giftTo, 'AddReciever', 'giftTo');
    BuiltValueNullFieldError.checkNotNull(
        deliveryDate, 'AddReciever', 'deliveryDate');
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'AddReciever', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, 'AddReciever', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(address, 'AddReciever', 'address');
  }

  @override
  AddReciever rebuild(void Function(AddRecieverBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddRecieverBuilder toBuilder() => new AddRecieverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddReciever &&
        giftTo == other.giftTo &&
        deliveryDate == other.deliveryDate &&
        countryCode == other.countryCode &&
        phoneNumber == other.phoneNumber &&
        address == other.address;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, giftTo.hashCode), deliveryDate.hashCode),
                countryCode.hashCode),
            phoneNumber.hashCode),
        address.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddReciever')
          ..add('giftTo', giftTo)
          ..add('deliveryDate', deliveryDate)
          ..add('countryCode', countryCode)
          ..add('phoneNumber', phoneNumber)
          ..add('address', address))
        .toString();
  }
}

class AddRecieverBuilder implements Builder<AddReciever, AddRecieverBuilder> {
  _$AddReciever _$v;

  String _giftTo;
  String get giftTo => _$this._giftTo;
  set giftTo(String giftTo) => _$this._giftTo = giftTo;

  String _deliveryDate;
  String get deliveryDate => _$this._deliveryDate;
  set deliveryDate(String deliveryDate) => _$this._deliveryDate = deliveryDate;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  AddRecieverBuilder();

  AddRecieverBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _giftTo = $v.giftTo;
      _deliveryDate = $v.deliveryDate;
      _countryCode = $v.countryCode;
      _phoneNumber = $v.phoneNumber;
      _address = $v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddReciever other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddReciever;
  }

  @override
  void update(void Function(AddRecieverBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddReciever build() {
    final _$result = _$v ??
        new _$AddReciever._(
            giftTo: BuiltValueNullFieldError.checkNotNull(
                giftTo, 'AddReciever', 'giftTo'),
            deliveryDate: BuiltValueNullFieldError.checkNotNull(
                deliveryDate, 'AddReciever', 'deliveryDate'),
            countryCode: BuiltValueNullFieldError.checkNotNull(
                countryCode, 'AddReciever', 'countryCode'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, 'AddReciever', 'phoneNumber'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, 'AddReciever', 'address'));
    replace(_$result);
    return _$result;
  }
}

class _$EditReciever extends EditReciever {
  @override
  final RecieverModel recieverModel;
  @override
  final int index;

  factory _$EditReciever([void Function(EditRecieverBuilder) updates]) =>
      (new EditRecieverBuilder()..update(updates)).build();

  _$EditReciever._({this.recieverModel, this.index}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        recieverModel, 'EditReciever', 'recieverModel');
    BuiltValueNullFieldError.checkNotNull(index, 'EditReciever', 'index');
  }

  @override
  EditReciever rebuild(void Function(EditRecieverBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditRecieverBuilder toBuilder() => new EditRecieverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditReciever &&
        recieverModel == other.recieverModel &&
        index == other.index;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, recieverModel.hashCode), index.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EditReciever')
          ..add('recieverModel', recieverModel)
          ..add('index', index))
        .toString();
  }
}

class EditRecieverBuilder
    implements Builder<EditReciever, EditRecieverBuilder> {
  _$EditReciever _$v;

  RecieverModelBuilder _recieverModel;
  RecieverModelBuilder get recieverModel =>
      _$this._recieverModel ??= new RecieverModelBuilder();
  set recieverModel(RecieverModelBuilder recieverModel) =>
      _$this._recieverModel = recieverModel;

  int _index;
  int get index => _$this._index;
  set index(int index) => _$this._index = index;

  EditRecieverBuilder();

  EditRecieverBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recieverModel = $v.recieverModel.toBuilder();
      _index = $v.index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditReciever other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditReciever;
  }

  @override
  void update(void Function(EditRecieverBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EditReciever build() {
    _$EditReciever _$result;
    try {
      _$result = _$v ??
          new _$EditReciever._(
              recieverModel: recieverModel.build(),
              index: BuiltValueNullFieldError.checkNotNull(
                  index, 'EditReciever', 'index'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'recieverModel';
        recieverModel.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EditReciever', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DeleteReciever extends DeleteReciever {
  @override
  final RecieverModel reciever;
  @override
  final int index;

  factory _$DeleteReciever([void Function(DeleteRecieverBuilder) updates]) =>
      (new DeleteRecieverBuilder()..update(updates)).build();

  _$DeleteReciever._({this.reciever, this.index}) : super._() {
    BuiltValueNullFieldError.checkNotNull(index, 'DeleteReciever', 'index');
  }

  @override
  DeleteReciever rebuild(void Function(DeleteRecieverBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRecieverBuilder toBuilder() =>
      new DeleteRecieverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteReciever &&
        reciever == other.reciever &&
        index == other.index;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, reciever.hashCode), index.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteReciever')
          ..add('reciever', reciever)
          ..add('index', index))
        .toString();
  }
}

class DeleteRecieverBuilder
    implements Builder<DeleteReciever, DeleteRecieverBuilder> {
  _$DeleteReciever _$v;

  RecieverModelBuilder _reciever;
  RecieverModelBuilder get reciever =>
      _$this._reciever ??= new RecieverModelBuilder();
  set reciever(RecieverModelBuilder reciever) => _$this._reciever = reciever;

  int _index;
  int get index => _$this._index;
  set index(int index) => _$this._index = index;

  DeleteRecieverBuilder();

  DeleteRecieverBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reciever = $v.reciever?.toBuilder();
      _index = $v.index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteReciever other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteReciever;
  }

  @override
  void update(void Function(DeleteRecieverBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteReciever build() {
    _$DeleteReciever _$result;
    try {
      _$result = _$v ??
          new _$DeleteReciever._(
              reciever: _reciever?.build(),
              index: BuiltValueNullFieldError.checkNotNull(
                  index, 'DeleteReciever', 'index'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reciever';
        _reciever?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeleteReciever', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
