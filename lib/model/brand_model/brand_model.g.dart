// GENERATED CODE - DO NOT MODIFY BY HAND

part of brand_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BrandModel> _$brandModelSerializer = new _$BrandModelSerializer();

class _$BrandModelSerializer implements StructuredSerializer<BrandModel> {
  @override
  final Iterable<Type> types = const [BrandModel, _$BrandModel];
  @override
  final String wireName = 'BrandModel';

  @override
  Iterable<Object> serialize(Serializers serializers, BrandModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'number',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
      'media_path',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'name_ar',
      serializers.serialize(object.arName,
          specifiedType: const FullType(String)),
      'name_en',
      serializers.serialize(object.enName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BrandModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BrandModelBuilder();

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
        case 'number':
          result.number = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$BrandModel extends BrandModel {
  @override
  final int id;
  @override
  final int number;
  @override
  final String image;
  @override
  final String arName;
  @override
  final String enName;

  factory _$BrandModel([void Function(BrandModelBuilder) updates]) =>
      (new BrandModelBuilder()..update(updates)).build();

  _$BrandModel._({this.id, this.number, this.image, this.arName, this.enName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'BrandModel', 'id');
    BuiltValueNullFieldError.checkNotNull(number, 'BrandModel', 'number');
    BuiltValueNullFieldError.checkNotNull(image, 'BrandModel', 'image');
    BuiltValueNullFieldError.checkNotNull(arName, 'BrandModel', 'arName');
    BuiltValueNullFieldError.checkNotNull(enName, 'BrandModel', 'enName');
  }

  @override
  BrandModel rebuild(void Function(BrandModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrandModelBuilder toBuilder() => new BrandModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BrandModel &&
        id == other.id &&
        number == other.number &&
        image == other.image &&
        arName == other.arName &&
        enName == other.enName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), number.hashCode), image.hashCode),
            arName.hashCode),
        enName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BrandModel')
          ..add('id', id)
          ..add('number', number)
          ..add('image', image)
          ..add('arName', arName)
          ..add('enName', enName))
        .toString();
  }
}

class BrandModelBuilder implements Builder<BrandModel, BrandModelBuilder> {
  _$BrandModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _arName;
  String get arName => _$this._arName;
  set arName(String arName) => _$this._arName = arName;

  String _enName;
  String get enName => _$this._enName;
  set enName(String enName) => _$this._enName = enName;

  BrandModelBuilder();

  BrandModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _number = $v.number;
      _image = $v.image;
      _arName = $v.arName;
      _enName = $v.enName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BrandModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BrandModel;
  }

  @override
  void update(void Function(BrandModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BrandModel build() {
    final _$result = _$v ??
        new _$BrandModel._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'BrandModel', 'id'),
            number: BuiltValueNullFieldError.checkNotNull(
                number, 'BrandModel', 'number'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'BrandModel', 'image'),
            arName: BuiltValueNullFieldError.checkNotNull(
                arName, 'BrandModel', 'arName'),
            enName: BuiltValueNullFieldError.checkNotNull(
                enName, 'BrandModel', 'enName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
