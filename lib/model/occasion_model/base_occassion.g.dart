// GENERATED CODE - DO NOT MODIFY BY HAND

part of base_occasion;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseOccasion> _$baseOccasionSerializer =
    new _$BaseOccasionSerializer();

class _$BaseOccasionSerializer implements StructuredSerializer<BaseOccasion> {
  @override
  final Iterable<Type> types = const [BaseOccasion, _$BaseOccasion];
  @override
  final String wireName = 'BaseOccasion';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseOccasion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'last_page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(OccasionModel)])),
    ];

    return result;
  }

  @override
  BaseOccasion deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseOccasionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'last_page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OccasionModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$BaseOccasion extends BaseOccasion {
  @override
  final int page;
  @override
  final BuiltList<OccasionModel> data;

  factory _$BaseOccasion([void Function(BaseOccasionBuilder) updates]) =>
      (new BaseOccasionBuilder()..update(updates)).build();

  _$BaseOccasion._({this.page, this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(page, 'BaseOccasion', 'page');
    BuiltValueNullFieldError.checkNotNull(data, 'BaseOccasion', 'data');
  }

  @override
  BaseOccasion rebuild(void Function(BaseOccasionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseOccasionBuilder toBuilder() => new BaseOccasionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseOccasion && page == other.page && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, page.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseOccasion')
          ..add('page', page)
          ..add('data', data))
        .toString();
  }
}

class BaseOccasionBuilder
    implements Builder<BaseOccasion, BaseOccasionBuilder> {
  _$BaseOccasion _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  ListBuilder<OccasionModel> _data;
  ListBuilder<OccasionModel> get data =>
      _$this._data ??= new ListBuilder<OccasionModel>();
  set data(ListBuilder<OccasionModel> data) => _$this._data = data;

  BaseOccasionBuilder();

  BaseOccasionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseOccasion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BaseOccasion;
  }

  @override
  void update(void Function(BaseOccasionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseOccasion build() {
    _$BaseOccasion _$result;
    try {
      _$result = _$v ??
          new _$BaseOccasion._(
              page: BuiltValueNullFieldError.checkNotNull(
                  page, 'BaseOccasion', 'page'),
              data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BaseOccasion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
