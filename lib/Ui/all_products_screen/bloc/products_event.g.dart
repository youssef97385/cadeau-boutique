// GENERATED CODE - DO NOT MODIFY BY HAND

part of products_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetProducts extends GetProducts {
  @override
  final int id;
  @override
  final String type;

  factory _$GetProducts([void Function(GetProductsBuilder) updates]) =>
      (new GetProductsBuilder()..update(updates)).build();

  _$GetProducts._({this.id, this.type}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GetProducts', 'id');
    BuiltValueNullFieldError.checkNotNull(type, 'GetProducts', 'type');
  }

  @override
  GetProducts rebuild(void Function(GetProductsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProductsBuilder toBuilder() => new GetProductsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProducts && id == other.id && type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetProducts')
          ..add('id', id)
          ..add('type', type))
        .toString();
  }
}

class GetProductsBuilder implements Builder<GetProducts, GetProductsBuilder> {
  _$GetProducts _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  GetProductsBuilder();

  GetProductsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetProducts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetProducts;
  }

  @override
  void update(void Function(GetProductsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetProducts build() {
    final _$result = _$v ??
        new _$GetProducts._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'GetProducts', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, 'GetProducts', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
