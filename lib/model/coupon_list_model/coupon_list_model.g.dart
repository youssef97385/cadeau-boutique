// GENERATED CODE - DO NOT MODIFY BY HAND

part of coupon_list_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CouponListModel> _$couponListModelSerializer =
    new _$CouponListModelSerializer();

class _$CouponListModelSerializer
    implements StructuredSerializer<CouponListModel> {
  @override
  final Iterable<Type> types = const [CouponListModel, _$CouponListModel];
  @override
  final String wireName = 'CouponListModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CouponListModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object value;
    value = object.image;
    if (value != null) {
      result
        ..add('media_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.arName;
    if (value != null) {
      result
        ..add('name_ar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.enName;
    if (value != null) {
      result
        ..add('name_en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.brandId;
    if (value != null) {
      result
        ..add('brand_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.brand;
    if (value != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BrandModel)));
    }
    value = object.descrptionAr;
    if (value != null) {
      result
        ..add('descrption_ar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descrptionEn;
    if (value != null) {
      result
        ..add('descrption_en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.expireDate;
    if (value != null) {
      result
        ..add('expire_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CouponListModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CouponListModelBuilder();

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
        case 'brand_id':
          result.brandId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'brand':
          result.brand.replace(serializers.deserialize(value,
              specifiedType: const FullType(BrandModel)) as BrandModel);
          break;
        case 'descrption_ar':
          result.descrptionAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descrption_en':
          result.descrptionEn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expire_date':
          result.expireDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CouponListModel extends CouponListModel {
  @override
  final int id;
  @override
  final String image;
  @override
  final String arName;
  @override
  final String enName;
  @override
  final int brandId;
  @override
  final int price;
  @override
  final String name;
  @override
  final BrandModel brand;
  @override
  final String descrptionAr;
  @override
  final String descrptionEn;
  @override
  final String expireDate;

  factory _$CouponListModel([void Function(CouponListModelBuilder) updates]) =>
      (new CouponListModelBuilder()..update(updates)).build();

  _$CouponListModel._(
      {this.id,
      this.image,
      this.arName,
      this.enName,
      this.brandId,
      this.price,
      this.name,
      this.brand,
      this.descrptionAr,
      this.descrptionEn,
      this.expireDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CouponListModel', 'id');
  }

  @override
  CouponListModel rebuild(void Function(CouponListModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CouponListModelBuilder toBuilder() =>
      new CouponListModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CouponListModel &&
        id == other.id &&
        image == other.image &&
        arName == other.arName &&
        enName == other.enName &&
        brandId == other.brandId &&
        price == other.price &&
        name == other.name &&
        brand == other.brand &&
        descrptionAr == other.descrptionAr &&
        descrptionEn == other.descrptionEn &&
        expireDate == other.expireDate;
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
                                        $jc($jc(0, id.hashCode),
                                            image.hashCode),
                                        arName.hashCode),
                                    enName.hashCode),
                                brandId.hashCode),
                            price.hashCode),
                        name.hashCode),
                    brand.hashCode),
                descrptionAr.hashCode),
            descrptionEn.hashCode),
        expireDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CouponListModel')
          ..add('id', id)
          ..add('image', image)
          ..add('arName', arName)
          ..add('enName', enName)
          ..add('brandId', brandId)
          ..add('price', price)
          ..add('name', name)
          ..add('brand', brand)
          ..add('descrptionAr', descrptionAr)
          ..add('descrptionEn', descrptionEn)
          ..add('expireDate', expireDate))
        .toString();
  }
}

class CouponListModelBuilder
    implements Builder<CouponListModel, CouponListModelBuilder> {
  _$CouponListModel _$v;

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

  int _brandId;
  int get brandId => _$this._brandId;
  set brandId(int brandId) => _$this._brandId = brandId;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  BrandModelBuilder _brand;
  BrandModelBuilder get brand => _$this._brand ??= new BrandModelBuilder();
  set brand(BrandModelBuilder brand) => _$this._brand = brand;

  String _descrptionAr;
  String get descrptionAr => _$this._descrptionAr;
  set descrptionAr(String descrptionAr) => _$this._descrptionAr = descrptionAr;

  String _descrptionEn;
  String get descrptionEn => _$this._descrptionEn;
  set descrptionEn(String descrptionEn) => _$this._descrptionEn = descrptionEn;

  String _expireDate;
  String get expireDate => _$this._expireDate;
  set expireDate(String expireDate) => _$this._expireDate = expireDate;

  CouponListModelBuilder();

  CouponListModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _image = $v.image;
      _arName = $v.arName;
      _enName = $v.enName;
      _brandId = $v.brandId;
      _price = $v.price;
      _name = $v.name;
      _brand = $v.brand?.toBuilder();
      _descrptionAr = $v.descrptionAr;
      _descrptionEn = $v.descrptionEn;
      _expireDate = $v.expireDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CouponListModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CouponListModel;
  }

  @override
  void update(void Function(CouponListModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CouponListModel build() {
    _$CouponListModel _$result;
    try {
      _$result = _$v ??
          new _$CouponListModel._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'CouponListModel', 'id'),
              image: image,
              arName: arName,
              enName: enName,
              brandId: brandId,
              price: price,
              name: name,
              brand: _brand?.build(),
              descrptionAr: descrptionAr,
              descrptionEn: descrptionEn,
              expireDate: expireDate);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'brand';
        _brand?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CouponListModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
