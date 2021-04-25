// GENERATED CODE - DO NOT MODIFY BY HAND

part of filter_body;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FilterBody> _$filterBodySerializer = new _$FilterBodySerializer();

class _$FilterBodySerializer implements StructuredSerializer<FilterBody> {
  @override
  final Iterable<Type> types = const [FilterBody, _$FilterBody];
  @override
  final String wireName = 'FilterBody';

  @override
  Iterable<Object> serialize(Serializers serializers, FilterBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.filterBody;
    if (value != null) {
      result
        ..add('filterBody')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(FilterItem)])));
    }
    return result;
  }

  @override
  FilterBody deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FilterBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'filterBody':
          result.filterBody.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FilterItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$FilterBody extends FilterBody {
  @override
  final BuiltList<FilterItem> filterBody;

  factory _$FilterBody([void Function(FilterBodyBuilder) updates]) =>
      (new FilterBodyBuilder()..update(updates)).build();

  _$FilterBody._({this.filterBody}) : super._();

  @override
  FilterBody rebuild(void Function(FilterBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterBodyBuilder toBuilder() => new FilterBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterBody && filterBody == other.filterBody;
  }

  @override
  int get hashCode {
    return $jf($jc(0, filterBody.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FilterBody')
          ..add('filterBody', filterBody))
        .toString();
  }
}

class FilterBodyBuilder implements Builder<FilterBody, FilterBodyBuilder> {
  _$FilterBody _$v;

  ListBuilder<FilterItem> _filterBody;
  ListBuilder<FilterItem> get filterBody =>
      _$this._filterBody ??= new ListBuilder<FilterItem>();
  set filterBody(ListBuilder<FilterItem> filterBody) =>
      _$this._filterBody = filterBody;

  FilterBodyBuilder();

  FilterBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filterBody = $v.filterBody?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterBody;
  }

  @override
  void update(void Function(FilterBodyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FilterBody build() {
    _$FilterBody _$result;
    try {
      _$result = _$v ?? new _$FilterBody._(filterBody: _filterBody?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'filterBody';
        _filterBody?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FilterBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
