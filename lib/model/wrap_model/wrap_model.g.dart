// GENERATED CODE - DO NOT MODIFY BY HAND

part of wrap_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WrapModel> _$wrapModelSerializer = new _$WrapModelSerializer();

class _$WrapModelSerializer implements StructuredSerializer<WrapModel> {
  @override
  final Iterable<Type> types = const [WrapModel, _$WrapModel];
  @override
  final String wireName = 'WrapModel';

  @override
  Iterable<Object> serialize(Serializers serializers, WrapModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'items',
      serializers.serialize(object.wrapItems,
          specifiedType:
              const FullType(BuiltList, const [const FullType(WrapItem)])),
    ];
    Object value;
    value = object.wrapNameAr;
    if (value != null) {
      result
        ..add('name_group_ar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.wrapNameEn;
    if (value != null) {
      result
        ..add('name_group_en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WrapModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WrapModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name_group_ar':
          result.wrapNameAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_group_en':
          result.wrapNameEn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'items':
          result.wrapItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WrapItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$WrapModel extends WrapModel {
  @override
  final String wrapNameAr;
  @override
  final String wrapNameEn;
  @override
  final BuiltList<WrapItem> wrapItems;

  factory _$WrapModel([void Function(WrapModelBuilder) updates]) =>
      (new WrapModelBuilder()..update(updates)).build();

  _$WrapModel._({this.wrapNameAr, this.wrapNameEn, this.wrapItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(wrapItems, 'WrapModel', 'wrapItems');
  }

  @override
  WrapModel rebuild(void Function(WrapModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WrapModelBuilder toBuilder() => new WrapModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WrapModel &&
        wrapNameAr == other.wrapNameAr &&
        wrapNameEn == other.wrapNameEn &&
        wrapItems == other.wrapItems;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, wrapNameAr.hashCode), wrapNameEn.hashCode),
        wrapItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WrapModel')
          ..add('wrapNameAr', wrapNameAr)
          ..add('wrapNameEn', wrapNameEn)
          ..add('wrapItems', wrapItems))
        .toString();
  }
}

class WrapModelBuilder implements Builder<WrapModel, WrapModelBuilder> {
  _$WrapModel _$v;

  String _wrapNameAr;
  String get wrapNameAr => _$this._wrapNameAr;
  set wrapNameAr(String wrapNameAr) => _$this._wrapNameAr = wrapNameAr;

  String _wrapNameEn;
  String get wrapNameEn => _$this._wrapNameEn;
  set wrapNameEn(String wrapNameEn) => _$this._wrapNameEn = wrapNameEn;

  ListBuilder<WrapItem> _wrapItems;
  ListBuilder<WrapItem> get wrapItems =>
      _$this._wrapItems ??= new ListBuilder<WrapItem>();
  set wrapItems(ListBuilder<WrapItem> wrapItems) =>
      _$this._wrapItems = wrapItems;

  WrapModelBuilder();

  WrapModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wrapNameAr = $v.wrapNameAr;
      _wrapNameEn = $v.wrapNameEn;
      _wrapItems = $v.wrapItems.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WrapModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WrapModel;
  }

  @override
  void update(void Function(WrapModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WrapModel build() {
    _$WrapModel _$result;
    try {
      _$result = _$v ??
          new _$WrapModel._(
              wrapNameAr: wrapNameAr,
              wrapNameEn: wrapNameEn,
              wrapItems: wrapItems.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'wrapItems';
        wrapItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WrapModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
