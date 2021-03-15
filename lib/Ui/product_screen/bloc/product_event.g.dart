// GENERATED CODE - DO NOT MODIFY BY HAND

part of product_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetProduct extends GetProduct {
  @override
  final int id;

  factory _$GetProduct([void Function(GetProductBuilder) updates]) =>
      (new GetProductBuilder()..update(updates)).build();

  _$GetProduct._({this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GetProduct', 'id');
  }

  @override
  GetProduct rebuild(void Function(GetProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProductBuilder toBuilder() => new GetProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProduct && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetProduct')..add('id', id))
        .toString();
  }
}

class GetProductBuilder implements Builder<GetProduct, GetProductBuilder> {
  _$GetProduct _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  GetProductBuilder();

  GetProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetProduct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetProduct;
  }

  @override
  void update(void Function(GetProductBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetProduct build() {
    final _$result = _$v ??
        new _$GetProduct._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'GetProduct', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
