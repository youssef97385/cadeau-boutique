// GENERATED CODE - DO NOT MODIFY BY HAND

part of relation_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelationModel> _$relationModelSerializer =
    new _$RelationModelSerializer();

class _$RelationModelSerializer implements StructuredSerializer<RelationModel> {
  @override
  final Iterable<Type> types = const [RelationModel, _$RelationModel];
  @override
  final String wireName = 'RelationModel';

  @override
  Iterable<Object> serialize(Serializers serializers, RelationModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'media_path',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'media_path_mini',
      serializers.serialize(object.miniImage,
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
  RelationModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelationModelBuilder();

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
        case 'media_path_mini':
          result.miniImage = serializers.deserialize(value,
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

class _$RelationModel extends RelationModel {
  @override
  final int id;
  @override
  final String image;
  @override
  final String miniImage;
  @override
  final String arName;
  @override
  final String enName;

  factory _$RelationModel([void Function(RelationModelBuilder) updates]) =>
      (new RelationModelBuilder()..update(updates)).build();

  _$RelationModel._(
      {this.id, this.image, this.miniImage, this.arName, this.enName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'RelationModel', 'id');
    BuiltValueNullFieldError.checkNotNull(image, 'RelationModel', 'image');
    BuiltValueNullFieldError.checkNotNull(
        miniImage, 'RelationModel', 'miniImage');
    BuiltValueNullFieldError.checkNotNull(arName, 'RelationModel', 'arName');
    BuiltValueNullFieldError.checkNotNull(enName, 'RelationModel', 'enName');
  }

  @override
  RelationModel rebuild(void Function(RelationModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationModelBuilder toBuilder() => new RelationModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationModel &&
        id == other.id &&
        image == other.image &&
        miniImage == other.miniImage &&
        arName == other.arName &&
        enName == other.enName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), image.hashCode), miniImage.hashCode),
            arName.hashCode),
        enName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RelationModel')
          ..add('id', id)
          ..add('image', image)
          ..add('miniImage', miniImage)
          ..add('arName', arName)
          ..add('enName', enName))
        .toString();
  }
}

class RelationModelBuilder
    implements Builder<RelationModel, RelationModelBuilder> {
  _$RelationModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _miniImage;
  String get miniImage => _$this._miniImage;
  set miniImage(String miniImage) => _$this._miniImage = miniImage;

  String _arName;
  String get arName => _$this._arName;
  set arName(String arName) => _$this._arName = arName;

  String _enName;
  String get enName => _$this._enName;
  set enName(String enName) => _$this._enName = enName;

  RelationModelBuilder();

  RelationModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _image = $v.image;
      _miniImage = $v.miniImage;
      _arName = $v.arName;
      _enName = $v.enName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RelationModel;
  }

  @override
  void update(void Function(RelationModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RelationModel build() {
    final _$result = _$v ??
        new _$RelationModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'RelationModel', 'id'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'RelationModel', 'image'),
            miniImage: BuiltValueNullFieldError.checkNotNull(
                miniImage, 'RelationModel', 'miniImage'),
            arName: BuiltValueNullFieldError.checkNotNull(
                arName, 'RelationModel', 'arName'),
            enName: BuiltValueNullFieldError.checkNotNull(
                enName, 'RelationModel', 'enName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
