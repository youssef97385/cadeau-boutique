// GENERATED CODE - DO NOT MODIFY BY HAND

part of base_coupon;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseCoupon> _$baseCouponSerializer = new _$BaseCouponSerializer();

class _$BaseCouponSerializer implements StructuredSerializer<BaseCoupon> {
  @override
  final Iterable<Type> types = const [BaseCoupon, _$BaseCoupon];
  @override
  final String wireName = 'BaseCoupon';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseCoupon object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'last_page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CouponModel)])),
    ];

    return result;
  }

  @override
  BaseCoupon deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseCouponBuilder();

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
                      BuiltList, const [const FullType(CouponModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$BaseCoupon extends BaseCoupon {
  @override
  final int page;
  @override
  final BuiltList<CouponModel> data;

  factory _$BaseCoupon([void Function(BaseCouponBuilder) updates]) =>
      (new BaseCouponBuilder()..update(updates)).build();

  _$BaseCoupon._({this.page, this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(page, 'BaseCoupon', 'page');
    BuiltValueNullFieldError.checkNotNull(data, 'BaseCoupon', 'data');
  }

  @override
  BaseCoupon rebuild(void Function(BaseCouponBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseCouponBuilder toBuilder() => new BaseCouponBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseCoupon && page == other.page && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, page.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseCoupon')
          ..add('page', page)
          ..add('data', data))
        .toString();
  }
}

class BaseCouponBuilder implements Builder<BaseCoupon, BaseCouponBuilder> {
  _$BaseCoupon _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  ListBuilder<CouponModel> _data;
  ListBuilder<CouponModel> get data =>
      _$this._data ??= new ListBuilder<CouponModel>();
  set data(ListBuilder<CouponModel> data) => _$this._data = data;

  BaseCouponBuilder();

  BaseCouponBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseCoupon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BaseCoupon;
  }

  @override
  void update(void Function(BaseCouponBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseCoupon build() {
    _$BaseCoupon _$result;
    try {
      _$result = _$v ??
          new _$BaseCoupon._(
              page: BuiltValueNullFieldError.checkNotNull(
                  page, 'BaseCoupon', 'page'),
              data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BaseCoupon', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
