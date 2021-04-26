// GENERATED CODE - DO NOT MODIFY BY HAND

part of main_gift;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MainGift> _$mainGiftSerializer = new _$MainGiftSerializer();

class _$MainGiftSerializer implements StructuredSerializer<MainGift> {
  @override
  final Iterable<Type> types = const [MainGift, _$MainGift];
  @override
  final String wireName = 'MainGift';

  @override
  Iterable<Object> serialize(Serializers serializers, MainGift object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('media_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.textEn;
    if (value != null) {
      result
        ..add('text_en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titleAr;
    if (value != null) {
      result
        ..add('title_ar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titleEn;
    if (value != null) {
      result
        ..add('title_en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.textAr;
    if (value != null) {
      result
        ..add('text_ar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idGift;
    if (value != null) {
      result
        ..add('gift_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  MainGift deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainGiftBuilder();

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
        case 'text_en':
          result.textEn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title_ar':
          result.titleAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title_en':
          result.titleEn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text_ar':
          result.textAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gift_id':
          result.idGift = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MainGift extends MainGift {
  @override
  final int id;
  @override
  final String image;
  @override
  final String textEn;
  @override
  final String titleAr;
  @override
  final String titleEn;
  @override
  final String textAr;
  @override
  final int idGift;

  factory _$MainGift([void Function(MainGiftBuilder) updates]) =>
      (new MainGiftBuilder()..update(updates)).build();

  _$MainGift._(
      {this.id,
      this.image,
      this.textEn,
      this.titleAr,
      this.titleEn,
      this.textAr,
      this.idGift})
      : super._();

  @override
  MainGift rebuild(void Function(MainGiftBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainGiftBuilder toBuilder() => new MainGiftBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainGift &&
        id == other.id &&
        image == other.image &&
        textEn == other.textEn &&
        titleAr == other.titleAr &&
        titleEn == other.titleEn &&
        textAr == other.textAr &&
        idGift == other.idGift;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), image.hashCode),
                        textEn.hashCode),
                    titleAr.hashCode),
                titleEn.hashCode),
            textAr.hashCode),
        idGift.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MainGift')
          ..add('id', id)
          ..add('image', image)
          ..add('textEn', textEn)
          ..add('titleAr', titleAr)
          ..add('titleEn', titleEn)
          ..add('textAr', textAr)
          ..add('idGift', idGift))
        .toString();
  }
}

class MainGiftBuilder implements Builder<MainGift, MainGiftBuilder> {
  _$MainGift _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _textEn;
  String get textEn => _$this._textEn;
  set textEn(String textEn) => _$this._textEn = textEn;

  String _titleAr;
  String get titleAr => _$this._titleAr;
  set titleAr(String titleAr) => _$this._titleAr = titleAr;

  String _titleEn;
  String get titleEn => _$this._titleEn;
  set titleEn(String titleEn) => _$this._titleEn = titleEn;

  String _textAr;
  String get textAr => _$this._textAr;
  set textAr(String textAr) => _$this._textAr = textAr;

  int _idGift;
  int get idGift => _$this._idGift;
  set idGift(int idGift) => _$this._idGift = idGift;

  MainGiftBuilder();

  MainGiftBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _image = $v.image;
      _textEn = $v.textEn;
      _titleAr = $v.titleAr;
      _titleEn = $v.titleEn;
      _textAr = $v.textAr;
      _idGift = $v.idGift;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainGift other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainGift;
  }

  @override
  void update(void Function(MainGiftBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MainGift build() {
    final _$result = _$v ??
        new _$MainGift._(
            id: id,
            image: image,
            textEn: textEn,
            titleAr: titleAr,
            titleEn: titleEn,
            textAr: textAr,
            idGift: idGift);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
