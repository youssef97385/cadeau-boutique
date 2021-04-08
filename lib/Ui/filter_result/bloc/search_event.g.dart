// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFilteredProducts extends GetFilteredProducts {
  @override
  final int occasionId;
  @override
  final int relationId;
  @override
  final String gender;
  @override
  final String minPrice;
  @override
  final String maxPrice;
  @override
  final String age;

  factory _$GetFilteredProducts(
          [void Function(GetFilteredProductsBuilder) updates]) =>
      (new GetFilteredProductsBuilder()..update(updates)).build();

  _$GetFilteredProducts._(
      {this.occasionId,
      this.relationId,
      this.gender,
      this.minPrice,
      this.maxPrice,
      this.age})
      : super._();

  @override
  GetFilteredProducts rebuild(
          void Function(GetFilteredProductsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFilteredProductsBuilder toBuilder() =>
      new GetFilteredProductsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFilteredProducts &&
        occasionId == other.occasionId &&
        relationId == other.relationId &&
        gender == other.gender &&
        minPrice == other.minPrice &&
        maxPrice == other.maxPrice &&
        age == other.age;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, occasionId.hashCode), relationId.hashCode),
                    gender.hashCode),
                minPrice.hashCode),
            maxPrice.hashCode),
        age.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFilteredProducts')
          ..add('occasionId', occasionId)
          ..add('relationId', relationId)
          ..add('gender', gender)
          ..add('minPrice', minPrice)
          ..add('maxPrice', maxPrice)
          ..add('age', age))
        .toString();
  }
}

class GetFilteredProductsBuilder
    implements Builder<GetFilteredProducts, GetFilteredProductsBuilder> {
  _$GetFilteredProducts _$v;

  int _occasionId;
  int get occasionId => _$this._occasionId;
  set occasionId(int occasionId) => _$this._occasionId = occasionId;

  int _relationId;
  int get relationId => _$this._relationId;
  set relationId(int relationId) => _$this._relationId = relationId;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _minPrice;
  String get minPrice => _$this._minPrice;
  set minPrice(String minPrice) => _$this._minPrice = minPrice;

  String _maxPrice;
  String get maxPrice => _$this._maxPrice;
  set maxPrice(String maxPrice) => _$this._maxPrice = maxPrice;

  String _age;
  String get age => _$this._age;
  set age(String age) => _$this._age = age;

  GetFilteredProductsBuilder();

  GetFilteredProductsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _occasionId = $v.occasionId;
      _relationId = $v.relationId;
      _gender = $v.gender;
      _minPrice = $v.minPrice;
      _maxPrice = $v.maxPrice;
      _age = $v.age;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFilteredProducts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFilteredProducts;
  }

  @override
  void update(void Function(GetFilteredProductsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFilteredProducts build() {
    final _$result = _$v ??
        new _$GetFilteredProducts._(
            occasionId: occasionId,
            relationId: relationId,
            gender: gender,
            minPrice: minPrice,
            maxPrice: maxPrice,
            age: age);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
