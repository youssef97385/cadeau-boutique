// GENERATED CODE - DO NOT MODIFY BY HAND

part of coupon_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CouponModel> _$couponModelSerializer = new _$CouponModelSerializer();

class _$CouponModelSerializer implements StructuredSerializer<CouponModel> {
  @override
  final Iterable<Type> types = const [CouponModel, _$CouponModel];
  @override
  final String wireName = 'CouponModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CouponModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'media_path',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'name_ar',
      serializers.serialize(object.arName,
          specifiedType: const FullType(String)),
      'name_en',
      serializers.serialize(object.enName,
          specifiedType: const FullType(String)),
      'start_date',
      serializers.serialize(object.startDate,
          specifiedType: const FullType(String)),
      'end_date',
      serializers.serialize(object.endDate,
          specifiedType: const FullType(String)),
      'main_price',
      serializers.serialize(object.mainPrice,
          specifiedType: const FullType(String)),
    ];
    Object value;
    value = object.brandId;
    if (value != null) {
      result
        ..add('brand_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CouponModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CouponModelBuilder();

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
        case 'media_path':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_ar':
          result.arName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_en':
          result.enName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start_date':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'end_date':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'main_price':
          result.mainPrice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'brand_id':
          result.brandId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CouponModel extends CouponModel {
  @override
  final int id;
  @override
  final String image;
  @override
  final String arName;
  @override
  final String enName;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final String mainPrice;
  @override
  final int brandId;

  factory _$CouponModel([void Function(CouponModelBuilder) updates]) =>
      (new CouponModelBuilder()..update(updates)).build();

  _$CouponModel._(
      {this.id,
      this.image,
      this.arName,
      this.enName,
      this.startDate,
      this.endDate,
      this.mainPrice,
      this.brandId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CouponModel', 'id');
    BuiltValueNullFieldError.checkNotNull(image, 'CouponModel', 'image');
    BuiltValueNullFieldError.checkNotNull(arName, 'CouponModel', 'arName');
    BuiltValueNullFieldError.checkNotNull(enName, 'CouponModel', 'enName');
    BuiltValueNullFieldError.checkNotNull(
        startDate, 'CouponModel', 'startDate');
    BuiltValueNullFieldError.checkNotNull(endDate, 'CouponModel', 'endDate');
    BuiltValueNullFieldError.checkNotNull(
        mainPrice, 'CouponModel', 'mainPrice');
  }

  @override
  CouponModel rebuild(void Function(CouponModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CouponModelBuilder toBuilder() => new CouponModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CouponModel &&
        id == other.id &&
        image == other.image &&
        arName == other.arName &&
        enName == other.enName &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        mainPrice == other.mainPrice &&
        brandId == other.brandId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), image.hashCode),
                            arName.hashCode),
                        enName.hashCode),
                    startDate.hashCode),
                endDate.hashCode),
            mainPrice.hashCode),
        brandId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CouponModel')
          ..add('id', id)
          ..add('image', image)
          ..add('arName', arName)
          ..add('enName', enName)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('mainPrice', mainPrice)
          ..add('brandId', brandId))
        .toString();
  }
}

class CouponModelBuilder implements Builder<CouponModel, CouponModelBuilder> {
  _$CouponModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _arName;
  String get arName => _$this._arName;
  set arName(String arName) => _$this._arName = arName;

  String _enName;
  String get enName => _$this._enName;
  set enName(String enName) => _$this._enName = enName;

  String _startDate;
  String get startDate => _$this._startDate;
  set startDate(String startDate) => _$this._startDate = startDate;

  String _endDate;
  String get endDate => _$this._endDate;
  set endDate(String endDate) => _$this._endDate = endDate;

  String _mainPrice;
  String get mainPrice => _$this._mainPrice;
  set mainPrice(String mainPrice) => _$this._mainPrice = mainPrice;

  int _brandId;
  int get brandId => _$this._brandId;
  set brandId(int brandId) => _$this._brandId = brandId;

  CouponModelBuilder();

  CouponModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _image = $v.image;
      _arName = $v.arName;
      _enName = $v.enName;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _mainPrice = $v.mainPrice;
      _brandId = $v.brandId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CouponModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CouponModel;
  }

  @override
  void update(void Function(CouponModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CouponModel build() {
    final _$result = _$v ??
        new _$CouponModel._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'CouponModel', 'id'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'CouponModel', 'image'),
            arName: BuiltValueNullFieldError.checkNotNull(
                arName, 'CouponModel', 'arName'),
            enName: BuiltValueNullFieldError.checkNotNull(
                enName, 'CouponModel', 'enName'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, 'CouponModel', 'startDate'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, 'CouponModel', 'endDate'),
            mainPrice: BuiltValueNullFieldError.checkNotNull(
                mainPrice, 'CouponModel', 'mainPrice'),
            brandId: brandId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
