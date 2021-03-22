// GENERATED CODE - DO NOT MODIFY BY HAND

part of favourite_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFavourites extends GetFavourites {
  factory _$GetFavourites([void Function(GetFavouritesBuilder) updates]) =>
      (new GetFavouritesBuilder()..update(updates)).build();

  _$GetFavourites._() : super._();

  @override
  GetFavourites rebuild(void Function(GetFavouritesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFavouritesBuilder toBuilder() => new GetFavouritesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFavourites;
  }

  @override
  int get hashCode {
    return 400498376;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetFavourites').toString();
  }
}

class GetFavouritesBuilder
    implements Builder<GetFavourites, GetFavouritesBuilder> {
  _$GetFavourites _$v;

  GetFavouritesBuilder();

  @override
  void replace(GetFavourites other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFavourites;
  }

  @override
  void update(void Function(GetFavouritesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFavourites build() {
    final _$result = _$v ?? new _$GetFavourites._();
    replace(_$result);
    return _$result;
  }
}

class _$RemoveFavourite extends RemoveFavourite {
  @override
  final int id;

  factory _$RemoveFavourite([void Function(RemoveFavouriteBuilder) updates]) =>
      (new RemoveFavouriteBuilder()..update(updates)).build();

  _$RemoveFavourite._({this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'RemoveFavourite', 'id');
  }

  @override
  RemoveFavourite rebuild(void Function(RemoveFavouriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveFavouriteBuilder toBuilder() =>
      new RemoveFavouriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveFavourite && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveFavourite')..add('id', id))
        .toString();
  }
}

class RemoveFavouriteBuilder
    implements Builder<RemoveFavourite, RemoveFavouriteBuilder> {
  _$RemoveFavourite _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  RemoveFavouriteBuilder();

  RemoveFavouriteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFavourite other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveFavourite;
  }

  @override
  void update(void Function(RemoveFavouriteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveFavourite build() {
    final _$result = _$v ??
        new _$RemoveFavourite._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'RemoveFavourite', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
