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
  @override
  final BuiltList<FilterItem> choices;
  @override
  final bool reChoose;

  factory _$GetFilteredProducts(
          [void Function(GetFilteredProductsBuilder) updates]) =>
      (new GetFilteredProductsBuilder()..update(updates)).build();

  _$GetFilteredProducts._(
      {this.occasionId,
      this.relationId,
      this.gender,
      this.minPrice,
      this.maxPrice,
      this.age,
      this.choices,
      this.reChoose})
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
        age == other.age &&
        choices == other.choices &&
        reChoose == other.reChoose;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, occasionId.hashCode),
                                relationId.hashCode),
                            gender.hashCode),
                        minPrice.hashCode),
                    maxPrice.hashCode),
                age.hashCode),
            choices.hashCode),
        reChoose.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFilteredProducts')
          ..add('occasionId', occasionId)
          ..add('relationId', relationId)
          ..add('gender', gender)
          ..add('minPrice', minPrice)
          ..add('maxPrice', maxPrice)
          ..add('age', age)
          ..add('choices', choices)
          ..add('reChoose', reChoose))
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

  ListBuilder<FilterItem> _choices;
  ListBuilder<FilterItem> get choices =>
      _$this._choices ??= new ListBuilder<FilterItem>();
  set choices(ListBuilder<FilterItem> choices) => _$this._choices = choices;

  bool _reChoose;
  bool get reChoose => _$this._reChoose;
  set reChoose(bool reChoose) => _$this._reChoose = reChoose;

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
      _choices = $v.choices?.toBuilder();
      _reChoose = $v.reChoose;
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
    _$GetFilteredProducts _$result;
    try {
      _$result = _$v ??
          new _$GetFilteredProducts._(
              occasionId: occasionId,
              relationId: relationId,
              gender: gender,
              minPrice: minPrice,
              maxPrice: maxPrice,
              age: age,
              choices: _choices?.build(),
              reChoose: reChoose);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'choices';
        _choices?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetFilteredProducts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddChoice extends AddChoice {
  @override
  final FilterItem filterItem;

  factory _$AddChoice([void Function(AddChoiceBuilder) updates]) =>
      (new AddChoiceBuilder()..update(updates)).build();

  _$AddChoice._({this.filterItem}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        filterItem, 'AddChoice', 'filterItem');
  }

  @override
  AddChoice rebuild(void Function(AddChoiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddChoiceBuilder toBuilder() => new AddChoiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddChoice && filterItem == other.filterItem;
  }

  @override
  int get hashCode {
    return $jf($jc(0, filterItem.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddChoice')
          ..add('filterItem', filterItem))
        .toString();
  }
}

class AddChoiceBuilder implements Builder<AddChoice, AddChoiceBuilder> {
  _$AddChoice _$v;

  FilterItemBuilder _filterItem;
  FilterItemBuilder get filterItem =>
      _$this._filterItem ??= new FilterItemBuilder();
  set filterItem(FilterItemBuilder filterItem) =>
      _$this._filterItem = filterItem;

  AddChoiceBuilder();

  AddChoiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filterItem = $v.filterItem.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddChoice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddChoice;
  }

  @override
  void update(void Function(AddChoiceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddChoice build() {
    _$AddChoice _$result;
    try {
      _$result = _$v ?? new _$AddChoice._(filterItem: filterItem.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'filterItem';
        filterItem.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddChoice', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DeleteChoice extends DeleteChoice {
  @override
  final FilterItem filterItem;

  factory _$DeleteChoice([void Function(DeleteChoiceBuilder) updates]) =>
      (new DeleteChoiceBuilder()..update(updates)).build();

  _$DeleteChoice._({this.filterItem}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        filterItem, 'DeleteChoice', 'filterItem');
  }

  @override
  DeleteChoice rebuild(void Function(DeleteChoiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteChoiceBuilder toBuilder() => new DeleteChoiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteChoice && filterItem == other.filterItem;
  }

  @override
  int get hashCode {
    return $jf($jc(0, filterItem.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteChoice')
          ..add('filterItem', filterItem))
        .toString();
  }
}

class DeleteChoiceBuilder
    implements Builder<DeleteChoice, DeleteChoiceBuilder> {
  _$DeleteChoice _$v;

  FilterItemBuilder _filterItem;
  FilterItemBuilder get filterItem =>
      _$this._filterItem ??= new FilterItemBuilder();
  set filterItem(FilterItemBuilder filterItem) =>
      _$this._filterItem = filterItem;

  DeleteChoiceBuilder();

  DeleteChoiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filterItem = $v.filterItem.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteChoice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteChoice;
  }

  @override
  void update(void Function(DeleteChoiceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteChoice build() {
    _$DeleteChoice _$result;
    try {
      _$result = _$v ?? new _$DeleteChoice._(filterItem: filterItem.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'filterItem';
        filterItem.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeleteChoice', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ReGetItems extends ReGetItems {
  @override
  final BuiltList<FilterItem> choices;

  factory _$ReGetItems([void Function(ReGetItemsBuilder) updates]) =>
      (new ReGetItemsBuilder()..update(updates)).build();

  _$ReGetItems._({this.choices}) : super._() {
    BuiltValueNullFieldError.checkNotNull(choices, 'ReGetItems', 'choices');
  }

  @override
  ReGetItems rebuild(void Function(ReGetItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReGetItemsBuilder toBuilder() => new ReGetItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReGetItems && choices == other.choices;
  }

  @override
  int get hashCode {
    return $jf($jc(0, choices.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReGetItems')..add('choices', choices))
        .toString();
  }
}

class ReGetItemsBuilder implements Builder<ReGetItems, ReGetItemsBuilder> {
  _$ReGetItems _$v;

  ListBuilder<FilterItem> _choices;
  ListBuilder<FilterItem> get choices =>
      _$this._choices ??= new ListBuilder<FilterItem>();
  set choices(ListBuilder<FilterItem> choices) => _$this._choices = choices;

  ReGetItemsBuilder();

  ReGetItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _choices = $v.choices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReGetItems other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReGetItems;
  }

  @override
  void update(void Function(ReGetItemsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReGetItems build() {
    _$ReGetItems _$result;
    try {
      _$result = _$v ?? new _$ReGetItems._(choices: choices.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'choices';
        choices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReGetItems', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
