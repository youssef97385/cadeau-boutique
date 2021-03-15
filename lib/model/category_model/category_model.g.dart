// GENERATED CODE - DO NOT MODIFY BY HAND

part of category_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryModel> _$categoryModelSerializer =
    new _$CategoryModelSerializer();

class _$CategoryModelSerializer implements StructuredSerializer<CategoryModel> {
  @override
  final Iterable<Type> types = const [CategoryModel, _$CategoryModel];
  @override
  final String wireName = 'CategoryModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CategoryModel object,
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
  CategoryModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryModelBuilder();

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

class _$CategoryModel extends CategoryModel {
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

  factory _$CategoryModel([void Function(CategoryModelBuilder) updates]) =>
      (new CategoryModelBuilder()..update(updates)).build();

  _$CategoryModel._(
      {this.id, this.number, this.image, this.arName, this.enName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CategoryModel', 'id');
    BuiltValueNullFieldError.checkNotNull(number, 'CategoryModel', 'number');
    BuiltValueNullFieldError.checkNotNull(image, 'CategoryModel', 'image');
    BuiltValueNullFieldError.checkNotNull(arName, 'CategoryModel', 'arName');
    BuiltValueNullFieldError.checkNotNull(enName, 'CategoryModel', 'enName');
  }

  @override
  CategoryModel rebuild(void Function(CategoryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryModelBuilder toBuilder() => new CategoryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryModel &&
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
    return (newBuiltValueToStringHelper('CategoryModel')
          ..add('id', id)
          ..add('number', number)
          ..add('image', image)
          ..add('arName', arName)
          ..add('enName', enName))
        .toString();
  }
}

class CategoryModelBuilder
    implements Builder<CategoryModel, CategoryModelBuilder> {
  _$CategoryModel _$v;

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

  CategoryModelBuilder();

  CategoryModelBuilder get _$this {
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
  void replace(CategoryModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryModel;
  }

  @override
  void update(void Function(CategoryModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryModel build() {
    final _$result = _$v ??
        new _$CategoryModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'CategoryModel', 'id'),
            number: BuiltValueNullFieldError.checkNotNull(
                number, 'CategoryModel', 'number'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'CategoryModel', 'image'),
            arName: BuiltValueNullFieldError.checkNotNull(
                arName, 'CategoryModel', 'arName'),
            enName: BuiltValueNullFieldError.checkNotNull(
                enName, 'CategoryModel', 'enName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
