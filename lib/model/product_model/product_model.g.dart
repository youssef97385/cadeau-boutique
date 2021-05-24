// GENERATED CODE - DO NOT MODIFY BY HAND

part of product_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductModel> _$productModelSerializer =
    new _$ProductModelSerializer();

class _$ProductModelSerializer implements StructuredSerializer<ProductModel> {
  @override
  final Iterable<Type> types = const [ProductModel, _$ProductModel];
  @override
  final String wireName = 'ProductModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nameAr;
    if (value != null) {
      result
        ..add('name_ar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameEn;
    if (value != null) {
      result
        ..add('name_en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('media_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mainPrice;
    if (value != null) {
      result
        ..add('main_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.brandId;
    if (value != null) {
      result
        ..add('brand_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.categoryId;
    if (value != null) {
      result
        ..add('category_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.salePrice;
    if (value != null) {
      result
        ..add('sale_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descriptionAr;
    if (value != null) {
      result
        ..add('description_ar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('for_gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFavourite;
    if (value != null) {
      result
        ..add('is_favorite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CategoryModel)));
    }
    value = object.brand;
    if (value != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BrandModel)));
    }
    value = object.sizes;
    if (value != null) {
      result
        ..add('sizes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SizeModel)])));
    }
    value = object.colors;
    if (value != null) {
      result
        ..add('colors')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ColorModel)])));
    }
    return result;
  }

  @override
  ProductModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductModelBuilder();

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
        case 'name_ar':
          result.nameAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_en':
          result.nameEn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'media_path':
          result.image = serializers.deserialize(value,
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
        case 'category_id':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sale_price':
          result.salePrice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description_ar':
          result.descriptionAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'for_gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_favorite':
          result.isFavourite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
              specifiedType: const FullType(CategoryModel)) as CategoryModel);
          break;
        case 'brand':
          result.brand.replace(serializers.deserialize(value,
              specifiedType: const FullType(BrandModel)) as BrandModel);
          break;
        case 'sizes':
          result.sizes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SizeModel)]))
              as BuiltList<Object>);
          break;
        case 'colors':
          result.colors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ColorModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProductModel extends ProductModel {
  @override
  final int id;
  @override
  final String nameAr;
  @override
  final String nameEn;
  @override
  final String image;
  @override
  final String mainPrice;
  @override
  final int brandId;
  @override
  final int categoryId;
  @override
  final String salePrice;
  @override
  final String description;
  @override
  final String descriptionAr;
  @override
  final int likes;
  @override
  final String gender;
  @override
  final bool isFavourite;
  @override
  final CategoryModel category;
  @override
  final BrandModel brand;
  @override
  final BuiltList<SizeModel> sizes;
  @override
  final BuiltList<ColorModel> colors;

  factory _$ProductModel([void Function(ProductModelBuilder) updates]) =>
      (new ProductModelBuilder()..update(updates)).build();

  _$ProductModel._(
      {this.id,
      this.nameAr,
      this.nameEn,
      this.image,
      this.mainPrice,
      this.brandId,
      this.categoryId,
      this.salePrice,
      this.description,
      this.descriptionAr,
      this.likes,
      this.gender,
      this.isFavourite,
      this.category,
      this.brand,
      this.sizes,
      this.colors})
      : super._();

  @override
  ProductModel rebuild(void Function(ProductModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductModelBuilder toBuilder() => new ProductModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductModel &&
        id == other.id &&
        nameAr == other.nameAr &&
        nameEn == other.nameEn &&
        image == other.image &&
        mainPrice == other.mainPrice &&
        brandId == other.brandId &&
        categoryId == other.categoryId &&
        salePrice == other.salePrice &&
        description == other.description &&
        descriptionAr == other.descriptionAr &&
        likes == other.likes &&
        gender == other.gender &&
        isFavourite == other.isFavourite &&
        category == other.category &&
        brand == other.brand &&
        sizes == other.sizes &&
        colors == other.colors;
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
                                                                        0,
                                                                        id
                                                                            .hashCode),
                                                                    nameAr
                                                                        .hashCode),
                                                                nameEn
                                                                    .hashCode),
                                                            image.hashCode),
                                                        mainPrice.hashCode),
                                                    brandId.hashCode),
                                                categoryId.hashCode),
                                            salePrice.hashCode),
                                        description.hashCode),
                                    descriptionAr.hashCode),
                                likes.hashCode),
                            gender.hashCode),
                        isFavourite.hashCode),
                    category.hashCode),
                brand.hashCode),
            sizes.hashCode),
        colors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductModel')
          ..add('id', id)
          ..add('nameAr', nameAr)
          ..add('nameEn', nameEn)
          ..add('image', image)
          ..add('mainPrice', mainPrice)
          ..add('brandId', brandId)
          ..add('categoryId', categoryId)
          ..add('salePrice', salePrice)
          ..add('description', description)
          ..add('descriptionAr', descriptionAr)
          ..add('likes', likes)
          ..add('gender', gender)
          ..add('isFavourite', isFavourite)
          ..add('category', category)
          ..add('brand', brand)
          ..add('sizes', sizes)
          ..add('colors', colors))
        .toString();
  }
}

class ProductModelBuilder
    implements Builder<ProductModel, ProductModelBuilder> {
  _$ProductModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nameAr;
  String get nameAr => _$this._nameAr;
  set nameAr(String nameAr) => _$this._nameAr = nameAr;

  String _nameEn;
  String get nameEn => _$this._nameEn;
  set nameEn(String nameEn) => _$this._nameEn = nameEn;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _mainPrice;
  String get mainPrice => _$this._mainPrice;
  set mainPrice(String mainPrice) => _$this._mainPrice = mainPrice;

  int _brandId;
  int get brandId => _$this._brandId;
  set brandId(int brandId) => _$this._brandId = brandId;

  int _categoryId;
  int get categoryId => _$this._categoryId;
  set categoryId(int categoryId) => _$this._categoryId = categoryId;

  String _salePrice;
  String get salePrice => _$this._salePrice;
  set salePrice(String salePrice) => _$this._salePrice = salePrice;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _descriptionAr;
  String get descriptionAr => _$this._descriptionAr;
  set descriptionAr(String descriptionAr) =>
      _$this._descriptionAr = descriptionAr;

  int _likes;
  int get likes => _$this._likes;
  set likes(int likes) => _$this._likes = likes;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  bool _isFavourite;
  bool get isFavourite => _$this._isFavourite;
  set isFavourite(bool isFavourite) => _$this._isFavourite = isFavourite;

  CategoryModelBuilder _category;
  CategoryModelBuilder get category =>
      _$this._category ??= new CategoryModelBuilder();
  set category(CategoryModelBuilder category) => _$this._category = category;

  BrandModelBuilder _brand;
  BrandModelBuilder get brand => _$this._brand ??= new BrandModelBuilder();
  set brand(BrandModelBuilder brand) => _$this._brand = brand;

  ListBuilder<SizeModel> _sizes;
  ListBuilder<SizeModel> get sizes =>
      _$this._sizes ??= new ListBuilder<SizeModel>();
  set sizes(ListBuilder<SizeModel> sizes) => _$this._sizes = sizes;

  ListBuilder<ColorModel> _colors;
  ListBuilder<ColorModel> get colors =>
      _$this._colors ??= new ListBuilder<ColorModel>();
  set colors(ListBuilder<ColorModel> colors) => _$this._colors = colors;

  ProductModelBuilder();

  ProductModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _nameAr = $v.nameAr;
      _nameEn = $v.nameEn;
      _image = $v.image;
      _mainPrice = $v.mainPrice;
      _brandId = $v.brandId;
      _categoryId = $v.categoryId;
      _salePrice = $v.salePrice;
      _description = $v.description;
      _descriptionAr = $v.descriptionAr;
      _likes = $v.likes;
      _gender = $v.gender;
      _isFavourite = $v.isFavourite;
      _category = $v.category?.toBuilder();
      _brand = $v.brand?.toBuilder();
      _sizes = $v.sizes?.toBuilder();
      _colors = $v.colors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductModel;
  }

  @override
  void update(void Function(ProductModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductModel build() {
    _$ProductModel _$result;
    try {
      _$result = _$v ??
          new _$ProductModel._(
              id: id,
              nameAr: nameAr,
              nameEn: nameEn,
              image: image,
              mainPrice: mainPrice,
              brandId: brandId,
              categoryId: categoryId,
              salePrice: salePrice,
              description: description,
              descriptionAr: descriptionAr,
              likes: likes,
              gender: gender,
              isFavourite: isFavourite,
              category: _category?.build(),
              brand: _brand?.build(),
              sizes: _sizes?.build(),
              colors: _colors?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'category';
        _category?.build();
        _$failedField = 'brand';
        _brand?.build();
        _$failedField = 'sizes';
        _sizes?.build();
        _$failedField = 'colors';
        _colors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
