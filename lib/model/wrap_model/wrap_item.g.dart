// GENERATED CODE - DO NOT MODIFY BY HAND

part of wrap_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WrapItem> _$wrapItemSerializer = new _$WrapItemSerializer();

class _$WrapItemSerializer implements StructuredSerializer<WrapItem> {
  @override
  final Iterable<Type> types = const [WrapItem, _$WrapItem];
  @override
  final String wireName = 'WrapItem';

  @override
  Iterable<Object> serialize(Serializers serializers, WrapItem object,
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WrapItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WrapItemBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$WrapItem extends WrapItem {
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
  final BuiltList<SizeModel> sizes;
  @override
  final BuiltList<ColorModel> colors;
  @override
  final String description;

  factory _$WrapItem([void Function(WrapItemBuilder) updates]) =>
      (new WrapItemBuilder()..update(updates)).build();

  _$WrapItem._(
      {this.id,
      this.nameAr,
      this.nameEn,
      this.image,
      this.mainPrice,
      this.sizes,
      this.colors,
      this.description})
      : super._();

  @override
  WrapItem rebuild(void Function(WrapItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WrapItemBuilder toBuilder() => new WrapItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WrapItem &&
        id == other.id &&
        nameAr == other.nameAr &&
        nameEn == other.nameEn &&
        image == other.image &&
        mainPrice == other.mainPrice &&
        sizes == other.sizes &&
        colors == other.colors &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), nameAr.hashCode),
                            nameEn.hashCode),
                        image.hashCode),
                    mainPrice.hashCode),
                sizes.hashCode),
            colors.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WrapItem')
          ..add('id', id)
          ..add('nameAr', nameAr)
          ..add('nameEn', nameEn)
          ..add('image', image)
          ..add('mainPrice', mainPrice)
          ..add('sizes', sizes)
          ..add('colors', colors)
          ..add('description', description))
        .toString();
  }
}

class WrapItemBuilder implements Builder<WrapItem, WrapItemBuilder> {
  _$WrapItem _$v;

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

  ListBuilder<SizeModel> _sizes;
  ListBuilder<SizeModel> get sizes =>
      _$this._sizes ??= new ListBuilder<SizeModel>();
  set sizes(ListBuilder<SizeModel> sizes) => _$this._sizes = sizes;

  ListBuilder<ColorModel> _colors;
  ListBuilder<ColorModel> get colors =>
      _$this._colors ??= new ListBuilder<ColorModel>();
  set colors(ListBuilder<ColorModel> colors) => _$this._colors = colors;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  WrapItemBuilder();

  WrapItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _nameAr = $v.nameAr;
      _nameEn = $v.nameEn;
      _image = $v.image;
      _mainPrice = $v.mainPrice;
      _sizes = $v.sizes?.toBuilder();
      _colors = $v.colors?.toBuilder();
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WrapItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WrapItem;
  }

  @override
  void update(void Function(WrapItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WrapItem build() {
    _$WrapItem _$result;
    try {
      _$result = _$v ??
          new _$WrapItem._(
              id: id,
              nameAr: nameAr,
              nameEn: nameEn,
              image: image,
              mainPrice: mainPrice,
              sizes: _sizes?.build(),
              colors: _colors?.build(),
              description: description);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sizes';
        _sizes?.build();
        _$failedField = 'colors';
        _colors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WrapItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
