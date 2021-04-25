// GENERATED CODE - DO NOT MODIFY BY HAND

part of filter_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FilterItem> _$filterItemSerializer = new _$FilterItemSerializer();

class _$FilterItemSerializer implements StructuredSerializer<FilterItem> {
  @override
  final Iterable<Type> types = const [FilterItem, _$FilterItem];
  @override
  final String wireName = 'FilterItem';

  @override
  Iterable<Object> serialize(Serializers serializers, FilterItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.key;
    if (value != null) {
      result
        ..add('key')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  FilterItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FilterItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$FilterItem extends FilterItem {
  @override
  final String key;
  @override
  final String value;
  @override
  final int id;

  factory _$FilterItem([void Function(FilterItemBuilder) updates]) =>
      (new FilterItemBuilder()..update(updates)).build();

  _$FilterItem._({this.key, this.value, this.id}) : super._();

  @override
  FilterItem rebuild(void Function(FilterItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterItemBuilder toBuilder() => new FilterItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterItem &&
        key == other.key &&
        value == other.value &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, key.hashCode), value.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FilterItem')
          ..add('key', key)
          ..add('value', value)
          ..add('id', id))
        .toString();
  }
}

class FilterItemBuilder implements Builder<FilterItem, FilterItemBuilder> {
  _$FilterItem _$v;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  FilterItemBuilder();

  FilterItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterItem;
  }

  @override
  void update(void Function(FilterItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FilterItem build() {
    final _$result = _$v ?? new _$FilterItem._(key: key, value: value, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
