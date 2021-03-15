// GENERATED CODE - DO NOT MODIFY BY HAND

part of base_category;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseCategory> _$baseCategorySerializer =
    new _$BaseCategorySerializer();

class _$BaseCategorySerializer implements StructuredSerializer<BaseCategory> {
  @override
  final Iterable<Type> types = const [BaseCategory, _$BaseCategory];
  @override
  final String wireName = 'BaseCategory';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'last_page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CategoryModel)])),
    ];

    return result;
  }

  @override
  BaseCategory deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseCategoryBuilder();

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
                      BuiltList, const [const FullType(CategoryModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$BaseCategory extends BaseCategory {
  @override
  final int page;
  @override
  final BuiltList<CategoryModel> data;

  factory _$BaseCategory([void Function(BaseCategoryBuilder) updates]) =>
      (new BaseCategoryBuilder()..update(updates)).build();

  _$BaseCategory._({this.page, this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(page, 'BaseCategory', 'page');
    BuiltValueNullFieldError.checkNotNull(data, 'BaseCategory', 'data');
  }

  @override
  BaseCategory rebuild(void Function(BaseCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseCategoryBuilder toBuilder() => new BaseCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseCategory && page == other.page && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, page.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseCategory')
          ..add('page', page)
          ..add('data', data))
        .toString();
  }
}

class BaseCategoryBuilder
    implements Builder<BaseCategory, BaseCategoryBuilder> {
  _$BaseCategory _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  ListBuilder<CategoryModel> _data;
  ListBuilder<CategoryModel> get data =>
      _$this._data ??= new ListBuilder<CategoryModel>();
  set data(ListBuilder<CategoryModel> data) => _$this._data = data;

  BaseCategoryBuilder();

  BaseCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BaseCategory;
  }

  @override
  void update(void Function(BaseCategoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseCategory build() {
    _$BaseCategory _$result;
    try {
      _$result = _$v ??
          new _$BaseCategory._(
              page: BuiltValueNullFieldError.checkNotNull(
                  page, 'BaseCategory', 'page'),
              data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BaseCategory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
