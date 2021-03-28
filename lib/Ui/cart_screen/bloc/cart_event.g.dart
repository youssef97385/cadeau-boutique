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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
