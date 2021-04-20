// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IniEvent extends IniEvent {
  @override
  final String langDevice;

  factory _$IniEvent([void Function(IniEventBuilder) updates]) =>
      (new IniEventBuilder()..update(updates)).build();

  _$IniEvent._({this.langDevice}) : super._() {
    BuiltValueNullFieldError.checkNotNull(langDevice, 'IniEvent', 'langDevice');
  }

  @override
  IniEvent rebuild(void Function(IniEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IniEventBuilder toBuilder() => new IniEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IniEvent && langDevice == other.langDevice;
  }

  @override
  int get hashCode {
    return $jf($jc(0, langDevice.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IniEvent')
          ..add('langDevice', langDevice))
        .toString();
  }
}

class IniEventBuilder implements Builder<IniEvent, IniEventBuilder> {
  _$IniEvent _$v;

  String _langDevice;
  String get langDevice => _$this._langDevice;
  set langDevice(String langDevice) => _$this._langDevice = langDevice;

  IniEventBuilder();

  IniEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _langDevice = $v.langDevice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IniEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IniEvent;
  }

  @override
  void update(void Function(IniEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IniEvent build() {
    final _$result = _$v ??
        new _$IniEvent._(
            langDevice: BuiltValueNullFieldError.checkNotNull(
                langDevice, 'IniEvent', 'langDevice'));
    replace(_$result);
    return _$result;
  }
}

class _$SaveTokenFirebase extends SaveTokenFirebase {
  @override
  final String fireToken;

  factory _$SaveTokenFirebase(
          [void Function(SaveTokenFirebaseBuilder) updates]) =>
      (new SaveTokenFirebaseBuilder()..update(updates)).build();

  _$SaveTokenFirebase._({this.fireToken}) : super._();

  @override
  SaveTokenFirebase rebuild(void Function(SaveTokenFirebaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SaveTokenFirebaseBuilder toBuilder() =>
      new SaveTokenFirebaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SaveTokenFirebase && fireToken == other.fireToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, fireToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SaveTokenFirebase')
          ..add('fireToken', fireToken))
        .toString();
  }
}

class SaveTokenFirebaseBuilder
    implements Builder<SaveTokenFirebase, SaveTokenFirebaseBuilder> {
  _$SaveTokenFirebase _$v;

  String _fireToken;
  String get fireToken => _$this._fireToken;
  set fireToken(String fireToken) => _$this._fireToken = fireToken;

  SaveTokenFirebaseBuilder();

  SaveTokenFirebaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fireToken = $v.fireToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SaveTokenFirebase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SaveTokenFirebase;
  }

  @override
  void update(void Function(SaveTokenFirebaseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SaveTokenFirebase build() {
    final _$result = _$v ?? new _$SaveTokenFirebase._(fireToken: fireToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
