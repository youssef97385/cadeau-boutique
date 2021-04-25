// GENERATED CODE - DO NOT MODIFY BY HAND

part of color_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ColorModel> _$colorModelSerializer = new _$ColorModelSerializer();

class _$ColorModelSerializer implements StructuredSerializer<ColorModel> {
  @override
  final Iterable<Type> types = const [ColorModel, _$ColorModel];
  @override
  final String wireName = 'ColorModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ColorModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
    ];
    Object value;
    value = object.image;
    if (value != null) {
      result
        ..add('media_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ColorModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ColorModelBuilder();

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
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'media_path':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ColorModel extends ColorModel {
  @override
  final int id;
  @override
  final String color;
  @override
  final String image;

  factory _$ColorModel([void Function(ColorModelBuilder) updates]) =>
      (new ColorModelBuilder()..update(updates)).build();

  _$ColorModel._({this.id, this.color, this.image}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'ColorModel', 'id');
    BuiltValueNullFieldError.checkNotNull(color, 'ColorModel', 'color');
  }

  @override
  ColorModel rebuild(void Function(ColorModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ColorModelBuilder toBuilder() => new ColorModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ColorModel &&
        id == other.id &&
        color == other.color &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), color.hashCode), image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ColorModel')
          ..add('id', id)
          ..add('color', color)
          ..add('image', image))
        .toString();
  }
}

class ColorModelBuilder implements Builder<ColorModel, ColorModelBuilder> {
  _$ColorModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  ColorModelBuilder();

  ColorModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _color = $v.color;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ColorModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ColorModel;
  }

  @override
  void update(void Function(ColorModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ColorModel build() {
    final _$result = _$v ??
        new _$ColorModel._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'ColorModel', 'id'),
            color: BuiltValueNullFieldError.checkNotNull(
                color, 'ColorModel', 'color'),
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
