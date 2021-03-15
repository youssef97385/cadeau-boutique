// GENERATED CODE - DO NOT MODIFY BY HAND

part of slider_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SliderModel> _$sliderModelSerializer = new _$SliderModelSerializer();

class _$SliderModelSerializer implements StructuredSerializer<SliderModel> {
  @override
  final Iterable<Type> types = const [SliderModel, _$SliderModel];
  @override
  final String wireName = 'SliderModel';

  @override
  Iterable<Object> serialize(Serializers serializers, SliderModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'number',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
      'media_path',
      serializers.serialize(object.img, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SliderModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SliderModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'media_path':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SliderModel extends SliderModel {
  @override
  final int number;
  @override
  final String img;

  factory _$SliderModel([void Function(SliderModelBuilder) updates]) =>
      (new SliderModelBuilder()..update(updates)).build();

  _$SliderModel._({this.number, this.img}) : super._() {
    BuiltValueNullFieldError.checkNotNull(number, 'SliderModel', 'number');
    BuiltValueNullFieldError.checkNotNull(img, 'SliderModel', 'img');
  }

  @override
  SliderModel rebuild(void Function(SliderModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SliderModelBuilder toBuilder() => new SliderModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SliderModel && number == other.number && img == other.img;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, number.hashCode), img.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SliderModel')
          ..add('number', number)
          ..add('img', img))
        .toString();
  }
}

class SliderModelBuilder implements Builder<SliderModel, SliderModelBuilder> {
  _$SliderModel _$v;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  SliderModelBuilder();

  SliderModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _img = $v.img;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SliderModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SliderModel;
  }

  @override
  void update(void Function(SliderModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SliderModel build() {
    final _$result = _$v ??
        new _$SliderModel._(
            number: BuiltValueNullFieldError.checkNotNull(
                number, 'SliderModel', 'number'),
            img: BuiltValueNullFieldError.checkNotNull(
                img, 'SliderModel', 'img'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
