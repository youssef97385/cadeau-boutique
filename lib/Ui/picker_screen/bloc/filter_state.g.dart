// GENERATED CODE - DO NOT MODIFY BY HAND

part of filter_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterState extends FilterState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<OccasionModel> occasions;
  @override
  final BuiltList<RelationModel> relations;

  factory _$FilterState([void Function(FilterStateBuilder) updates]) =>
      (new FilterStateBuilder()..update(updates)).build();

  _$FilterState._(
      {this.success,
      this.isLoading,
      this.error,
      this.occasions,
      this.relations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'FilterState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'FilterState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'FilterState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        occasions, 'FilterState', 'occasions');
    BuiltValueNullFieldError.checkNotNull(
        relations, 'FilterState', 'relations');
  }

  @override
  FilterState rebuild(void Function(FilterStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterStateBuilder toBuilder() => new FilterStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        occasions == other.occasions &&
        relations == other.relations;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, success.hashCode), isLoading.hashCode),
                error.hashCode),
            occasions.hashCode),
        relations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FilterState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('occasions', occasions)
          ..add('relations', relations))
        .toString();
  }
}

class FilterStateBuilder implements Builder<FilterState, FilterStateBuilder> {
  _$FilterState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<OccasionModel> _occasions;
  ListBuilder<OccasionModel> get occasions =>
      _$this._occasions ??= new ListBuilder<OccasionModel>();
  set occasions(ListBuilder<OccasionModel> occasions) =>
      _$this._occasions = occasions;

  ListBuilder<RelationModel> _relations;
  ListBuilder<RelationModel> get relations =>
      _$this._relations ??= new ListBuilder<RelationModel>();
  set relations(ListBuilder<RelationModel> relations) =>
      _$this._relations = relations;

  FilterStateBuilder();

  FilterStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _occasions = $v.occasions.toBuilder();
      _relations = $v.relations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterState;
  }

  @override
  void update(void Function(FilterStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FilterState build() {
    _$FilterState _$result;
    try {
      _$result = _$v ??
          new _$FilterState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'FilterState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'FilterState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'FilterState', 'error'),
              occasions: occasions.build(),
              relations: relations.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'occasions';
        occasions.build();
        _$failedField = 'relations';
        relations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FilterState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
