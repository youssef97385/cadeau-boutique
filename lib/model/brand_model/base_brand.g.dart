// GENERATED CODE - DO NOT MODIFY BY HAND

part of base_brand;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseBrand> _$baseBrandSerializer = new _$BaseBrandSerializer();

class _$BaseBrandSerializer implements StructuredSerializer<BaseBrand> {
  @override
  final Iterable<Type> types = const [BaseBrand, _$BaseBrand];
  @override
  final String wireName = 'BaseBrand';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseBrand object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'last_page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BrandModel)])),
    ];

    return result;
  }

  @override
  BaseBrand deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseBrandBuilder();

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
                      BuiltList, const [const FullType(BrandModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$BaseBrand extends BaseBrand {
  @override
  final int page;
  @override
  final BuiltList<BrandModel> data;

  factory _$BaseBrand([void Function(BaseBrandBuilder) updates]) =>
      (new BaseBrandBuilder()..update(updates)).build();

  _$BaseBrand._({this.page, this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(page, 'BaseBrand', 'page');
    BuiltValueNullFieldError.checkNotNull(data, 'BaseBrand', 'data');
  }

  @override
  BaseBrand rebuild(void Function(BaseBrandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseBrandBuilder toBuilder() => new BaseBrandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseBrand && page == other.page && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, page.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseBrand')
          ..add('page', page)
          ..add('data', data))
        .toString();
  }
}

class BaseBrandBuilder implements Builder<BaseBrand, BaseBrandBuilder> {
  _$BaseBrand _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  ListBuilder<BrandModel> _data;
  ListBuilder<BrandModel> get data =>
      _$this._data ??= new ListBuilder<BrandModel>();
  set data(ListBuilder<BrandModel> data) => _$this._data = data;

  BaseBrandBuilder();

  BaseBrandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseBrand other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BaseBrand;
  }

  @override
  void update(void Function(BaseBrandBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseBrand build() {
    _$BaseBrand _$result;
    try {
      _$result = _$v ??
          new _$BaseBrand._(
              page: BuiltValueNullFieldError.checkNotNull(
                  page, 'BaseBrand', 'page'),
              data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BaseBrand', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
