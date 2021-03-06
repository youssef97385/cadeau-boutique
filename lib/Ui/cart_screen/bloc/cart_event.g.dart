// GENERATED CODE - DO NOT MODIFY BY HAND

part of cart_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCartInfo extends GetCartInfo {
  factory _$GetCartInfo([void Function(GetCartInfoBuilder) updates]) =>
      (new GetCartInfoBuilder()..update(updates)).build();

  _$GetCartInfo._() : super._();

  @override
  GetCartInfo rebuild(void Function(GetCartInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCartInfoBuilder toBuilder() => new GetCartInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCartInfo;
  }

  @override
  int get hashCode {
    return 713569203;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetCartInfo').toString();
  }
}

class GetCartInfoBuilder implements Builder<GetCartInfo, GetCartInfoBuilder> {
  _$GetCartInfo _$v;

  GetCartInfoBuilder();

  @override
  void replace(GetCartInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCartInfo;
  }

  @override
  void update(void Function(GetCartInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCartInfo build() {
    final _$result = _$v ?? new _$GetCartInfo._();
    replace(_$result);
    return _$result;
  }
}

class _$AddSong extends AddSong {
  @override
  final String song;

  factory _$AddSong([void Function(AddSongBuilder) updates]) =>
      (new AddSongBuilder()..update(updates)).build();

  _$AddSong._({this.song}) : super._() {
    BuiltValueNullFieldError.checkNotNull(song, 'AddSong', 'song');
  }

  @override
  AddSong rebuild(void Function(AddSongBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddSongBuilder toBuilder() => new AddSongBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddSong && song == other.song;
  }

  @override
  int get hashCode {
    return $jf($jc(0, song.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddSong')..add('song', song))
        .toString();
  }
}

class AddSongBuilder implements Builder<AddSong, AddSongBuilder> {
  _$AddSong _$v;

  String _song;
  String get song => _$this._song;
  set song(String song) => _$this._song = song;

  AddSongBuilder();

  AddSongBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _song = $v.song;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddSong other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddSong;
  }

  @override
  void update(void Function(AddSongBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddSong build() {
    final _$result = _$v ??
        new _$AddSong._(
            song:
                BuiltValueNullFieldError.checkNotNull(song, 'AddSong', 'song'));
    replace(_$result);
    return _$result;
  }
}

class _$RemoveItem extends RemoveItem {
  @override
  final int id;

  factory _$RemoveItem([void Function(RemoveItemBuilder) updates]) =>
      (new RemoveItemBuilder()..update(updates)).build();

  _$RemoveItem._({this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'RemoveItem', 'id');
  }

  @override
  RemoveItem rebuild(void Function(RemoveItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveItemBuilder toBuilder() => new RemoveItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveItem && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveItem')..add('id', id))
        .toString();
  }
}

class RemoveItemBuilder implements Builder<RemoveItem, RemoveItemBuilder> {
  _$RemoveItem _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  RemoveItemBuilder();

  RemoveItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveItem;
  }

  @override
  void update(void Function(RemoveItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveItem build() {
    final _$result = _$v ??
        new _$RemoveItem._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'RemoveItem', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GetGlobalWraps extends GetGlobalWraps {
  factory _$GetGlobalWraps([void Function(GetGlobalWrapsBuilder) updates]) =>
      (new GetGlobalWrapsBuilder()..update(updates)).build();

  _$GetGlobalWraps._() : super._();

  @override
  GetGlobalWraps rebuild(void Function(GetGlobalWrapsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGlobalWrapsBuilder toBuilder() =>
      new GetGlobalWrapsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGlobalWraps;
  }

  @override
  int get hashCode {
    return 107415794;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetGlobalWraps').toString();
  }
}

class GetGlobalWrapsBuilder
    implements Builder<GetGlobalWraps, GetGlobalWrapsBuilder> {
  _$GetGlobalWraps _$v;

  GetGlobalWrapsBuilder();

  @override
  void replace(GetGlobalWraps other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGlobalWraps;
  }

  @override
  void update(void Function(GetGlobalWrapsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetGlobalWraps build() {
    final _$result = _$v ?? new _$GetGlobalWraps._();
    replace(_$result);
    return _$result;
  }
}

class _$AddGlobalWrap extends AddGlobalWrap {
  @override
  final int wrapId;
  @override
  final int wrapColorId;

  factory _$AddGlobalWrap([void Function(AddGlobalWrapBuilder) updates]) =>
      (new AddGlobalWrapBuilder()..update(updates)).build();

  _$AddGlobalWrap._({this.wrapId, this.wrapColorId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(wrapId, 'AddGlobalWrap', 'wrapId');
  }

  @override
  AddGlobalWrap rebuild(void Function(AddGlobalWrapBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddGlobalWrapBuilder toBuilder() => new AddGlobalWrapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddGlobalWrap &&
        wrapId == other.wrapId &&
        wrapColorId == other.wrapColorId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, wrapId.hashCode), wrapColorId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddGlobalWrap')
          ..add('wrapId', wrapId)
          ..add('wrapColorId', wrapColorId))
        .toString();
  }
}

class AddGlobalWrapBuilder
    implements Builder<AddGlobalWrap, AddGlobalWrapBuilder> {
  _$AddGlobalWrap _$v;

  int _wrapId;
  int get wrapId => _$this._wrapId;
  set wrapId(int wrapId) => _$this._wrapId = wrapId;

  int _wrapColorId;
  int get wrapColorId => _$this._wrapColorId;
  set wrapColorId(int wrapColorId) => _$this._wrapColorId = wrapColorId;

  AddGlobalWrapBuilder();

  AddGlobalWrapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wrapId = $v.wrapId;
      _wrapColorId = $v.wrapColorId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddGlobalWrap other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddGlobalWrap;
  }

  @override
  void update(void Function(AddGlobalWrapBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddGlobalWrap build() {
    final _$result = _$v ??
        new _$AddGlobalWrap._(
            wrapId: BuiltValueNullFieldError.checkNotNull(
                wrapId, 'AddGlobalWrap', 'wrapId'),
            wrapColorId: wrapColorId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
