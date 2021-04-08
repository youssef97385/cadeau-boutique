// GENERATED CODE - DO NOT MODIFY BY HAND

part of edit_profile_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditProfileState extends EditProfileState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final String error;

  factory _$EditProfileState(
          [void Function(EditProfileStateBuilder) updates]) =>
      (new EditProfileStateBuilder()..update(updates)).build();

  _$EditProfileState._({this.success, this.isLoading, this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, 'EditProfileState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'EditProfileState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'EditProfileState', 'error');
  }

  @override
  EditProfileState rebuild(void Function(EditProfileStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditProfileStateBuilder toBuilder() =>
      new EditProfileStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditProfileState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, success.hashCode), isLoading.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EditProfileState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error))
        .toString();
  }
}

class EditProfileStateBuilder
    implements Builder<EditProfileState, EditProfileStateBuilder> {
  _$EditProfileState _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  EditProfileStateBuilder();

  EditProfileStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditProfileState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditProfileState;
  }

  @override
  void update(void Function(EditProfileStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EditProfileState build() {
    final _$result = _$v ??
        new _$EditProfileState._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'EditProfileState', 'success'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, 'EditProfileState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'EditProfileState', 'error'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
