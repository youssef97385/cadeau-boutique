// GENERATED CODE - DO NOT MODIFY BY HAND

part of occasion_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OccasionModel> _$occasionModelSerializer =
    new _$OccasionModelSerializer();

class _$OccasionModelSerializer implements StructuredSerializer<OccasionModel> {
  @override
  final Iterable<Type> types = const [OccasionModel, _$OccasionModel];
  @override
  final String wireName = 'OccasionModel';

  @override
  Iterable<Object> serialize(Serializers serializers, OccasionModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'number',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
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
      'is_deleted',
      serializers.serialize(object.isDeleted,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  OccasionModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OccasionModelBuilder();

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
        case 'is_deleted':
          result.isDeleted = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$OccasionModel extends OccasionModel {
  @override
  final int id;
  @override
  final int number;
  @override
  final String image;
  @override
  final String miniImage;
  @override
  final String arName;
  @override
  final String enName;
  @override
  final int isDeleted;

  factory _$OccasionModel([void Function(OccasionModelBuilder) updates]) =>
      (new OccasionModelBuilder()..update(updates)).build();

  _$OccasionModel._(
      {this.id,
      this.number,
      this.image,
      this.miniImage,
      this.arName,
      this.enName,
      this.isDeleted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'OccasionModel', 'id');
    BuiltValueNullFieldError.checkNotNull(number, 'OccasionModel', 'number');
    BuiltValueNullFieldError.checkNotNull(image, 'OccasionModel', 'image');
    BuiltValueNullFieldError.checkNotNull(
        miniImage, 'OccasionModel', 'miniImage');
    BuiltValueNullFieldError.checkNotNull(arName, 'OccasionModel', 'arName');
    BuiltValueNullFieldError.checkNotNull(enName, 'OccasionModel', 'enName');
    BuiltValueNullFieldError.checkNotNull(
        isDeleted, 'OccasionModel', 'isDeleted');
  }

  @override
  OccasionModel rebuild(void Function(OccasionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OccasionModelBuilder toBuilder() => new OccasionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OccasionModel &&
        id == other.id &&
        number == other.number &&
        image == other.image &&
        miniImage == other.miniImage &&
        arName == other.arName &&
        enName == other.enName &&
        isDeleted == other.isDeleted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), number.hashCode),
                        image.hashCode),
                    miniImage.hashCode),
                arName.hashCode),
            enName.hashCode),
        isDeleted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OccasionModel')
          ..add('id', id)
          ..add('number', number)
          ..add('image', image)
          ..add('miniImage', miniImage)
          ..add('arName', arName)
          ..add('enName', enName)
          ..add('isDeleted', isDeleted))
        .toString();
  }
}

class OccasionModelBuilder
    implements Builder<OccasionModel, OccasionModelBuilder> {
  _$OccasionModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

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

  int _isDeleted;
  int get isDeleted => _$this._isDeleted;
  set isDeleted(int isDeleted) => _$this._isDeleted = isDeleted;

  OccasionModelBuilder();

  OccasionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _number = $v.number;
      _image = $v.image;
      _miniImage = $v.miniImage;
      _arName = $v.arName;
      _enName = $v.enName;
      _isDeleted = $v.isDeleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OccasionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OccasionModel;
  }

  @override
  void update(void Function(OccasionModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OccasionModel build() {
    final _$result = _$v ??
        new _$OccasionModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'OccasionModel', 'id'),
            number: BuiltValueNullFieldError.checkNotNull(
                number, 'OccasionModel', 'number'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'OccasionModel', 'image'),
            miniImage: BuiltValueNullFieldError.checkNotNull(
                miniImage, 'OccasionModel', 'miniImage'),
            arName: BuiltValueNullFieldError.checkNotNull(
                arName, 'OccasionModel', 'arName'),
            enName: BuiltValueNullFieldError.checkNotNull(
                enName, 'OccasionModel', 'enName'),
            isDeleted: BuiltValueNullFieldError.checkNotNull(
                isDeleted, 'OccasionModel', 'isDeleted'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
