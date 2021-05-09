// GENERATED CODE - DO NOT MODIFY BY HAND

part of tabs_card_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TabsCardState extends TabsCardState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<TrackModel> tracks;

  factory _$TabsCardState([void Function(TabsCardStateBuilder) updates]) =>
      (new TabsCardStateBuilder()..update(updates)).build();

  _$TabsCardState._({this.success, this.isLoading, this.error, this.tracks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, 'TabsCardState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'TabsCardState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'TabsCardState', 'error');
    BuiltValueNullFieldError.checkNotNull(tracks, 'TabsCardState', 'tracks');
  }

  @override
  TabsCardState rebuild(void Function(TabsCardStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TabsCardStateBuilder toBuilder() => new TabsCardStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabsCardState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        tracks == other.tracks;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, success.hashCode), isLoading.hashCode), error.hashCode),
        tracks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TabsCardState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('tracks', tracks))
        .toString();
  }
}

class TabsCardStateBuilder
    implements Builder<TabsCardState, TabsCardStateBuilder> {
  _$TabsCardState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<TrackModel> _tracks;
  ListBuilder<TrackModel> get tracks =>
      _$this._tracks ??= new ListBuilder<TrackModel>();
  set tracks(ListBuilder<TrackModel> tracks) => _$this._tracks = tracks;

  TabsCardStateBuilder();

  TabsCardStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _tracks = $v.tracks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TabsCardState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TabsCardState;
  }

  @override
  void update(void Function(TabsCardStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TabsCardState build() {
    _$TabsCardState _$result;
    try {
      _$result = _$v ??
          new _$TabsCardState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'TabsCardState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'TabsCardState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'TabsCardState', 'error'),
              tracks: tracks.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tracks';
        tracks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TabsCardState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
