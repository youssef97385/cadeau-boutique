// GENERATED CODE - DO NOT MODIFY BY HAND

part of track_screen_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackScreenState extends TrackScreenState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final BuiltList<TrackModel> tracks;

  factory _$TrackScreenState(
          [void Function(TrackScreenStateBuilder) updates]) =>
      (new TrackScreenStateBuilder()..update(updates)).build();

  _$TrackScreenState._({this.success, this.isLoading, this.error, this.tracks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, 'TrackScreenState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'TrackScreenState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'TrackScreenState', 'error');
    BuiltValueNullFieldError.checkNotNull(tracks, 'TrackScreenState', 'tracks');
  }

  @override
  TrackScreenState rebuild(void Function(TrackScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackScreenStateBuilder toBuilder() =>
      new TrackScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackScreenState &&
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
    return (newBuiltValueToStringHelper('TrackScreenState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('tracks', tracks))
        .toString();
  }
}

class TrackScreenStateBuilder
    implements Builder<TrackScreenState, TrackScreenStateBuilder> {
  _$TrackScreenState _$v;

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

  TrackScreenStateBuilder();

  TrackScreenStateBuilder get _$this {
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
  void replace(TrackScreenState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackScreenState;
  }

  @override
  void update(void Function(TrackScreenStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrackScreenState build() {
    _$TrackScreenState _$result;
    try {
      _$result = _$v ??
          new _$TrackScreenState._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, 'TrackScreenState', 'success'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'TrackScreenState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'TrackScreenState', 'error'),
              tracks: tracks.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tracks';
        tracks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TrackScreenState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
