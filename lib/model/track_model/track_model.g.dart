// GENERATED CODE - DO NOT MODIFY BY HAND

part of track_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TrackModel> _$trackModelSerializer = new _$TrackModelSerializer();

class _$TrackModelSerializer implements StructuredSerializer<TrackModel> {
  @override
  final Iterable<Type> types = const [TrackModel, _$TrackModel];
  @override
  final String wireName = 'TrackModel';

  @override
  Iterable<Object> serialize(Serializers serializers, TrackModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'order_status',
      serializers.serialize(object.orderStatus,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object value;
    value = object.deliveryDate;
    if (value != null) {
      result
        ..add('delivery_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.giftTo;
    if (value != null) {
      result
        ..add('gift_to')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalCost;
    if (value != null) {
      result
        ..add('total_cost')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deliveredAt;
    if (value != null) {
      result
        ..add('delivered_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TrackModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrackModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'order_status':
          result.orderStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'delivery_date':
          result.deliveryDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gift_to':
          result.giftTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_cost':
          result.totalCost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'delivered_at':
          result.deliveredAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TrackModel extends TrackModel {
  @override
  final String orderStatus;
  @override
  final String deliveryDate;
  @override
  final String giftTo;
  @override
  final String totalCost;
  @override
  final String deliveredAt;
  @override
  final String createdAt;
  @override
  final int id;

  factory _$TrackModel([void Function(TrackModelBuilder) updates]) =>
      (new TrackModelBuilder()..update(updates)).build();

  _$TrackModel._(
      {this.orderStatus,
      this.deliveryDate,
      this.giftTo,
      this.totalCost,
      this.deliveredAt,
      this.createdAt,
      this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        orderStatus, 'TrackModel', 'orderStatus');
    BuiltValueNullFieldError.checkNotNull(id, 'TrackModel', 'id');
  }

  @override
  TrackModel rebuild(void Function(TrackModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackModelBuilder toBuilder() => new TrackModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackModel &&
        orderStatus == other.orderStatus &&
        deliveryDate == other.deliveryDate &&
        giftTo == other.giftTo &&
        totalCost == other.totalCost &&
        deliveredAt == other.deliveredAt &&
        createdAt == other.createdAt &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, orderStatus.hashCode),
                            deliveryDate.hashCode),
                        giftTo.hashCode),
                    totalCost.hashCode),
                deliveredAt.hashCode),
            createdAt.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrackModel')
          ..add('orderStatus', orderStatus)
          ..add('deliveryDate', deliveryDate)
          ..add('giftTo', giftTo)
          ..add('totalCost', totalCost)
          ..add('deliveredAt', deliveredAt)
          ..add('createdAt', createdAt)
          ..add('id', id))
        .toString();
  }
}

class TrackModelBuilder implements Builder<TrackModel, TrackModelBuilder> {
  _$TrackModel _$v;

  String _orderStatus;
  String get orderStatus => _$this._orderStatus;
  set orderStatus(String orderStatus) => _$this._orderStatus = orderStatus;

  String _deliveryDate;
  String get deliveryDate => _$this._deliveryDate;
  set deliveryDate(String deliveryDate) => _$this._deliveryDate = deliveryDate;

  String _giftTo;
  String get giftTo => _$this._giftTo;
  set giftTo(String giftTo) => _$this._giftTo = giftTo;

  String _totalCost;
  String get totalCost => _$this._totalCost;
  set totalCost(String totalCost) => _$this._totalCost = totalCost;

  String _deliveredAt;
  String get deliveredAt => _$this._deliveredAt;
  set deliveredAt(String deliveredAt) => _$this._deliveredAt = deliveredAt;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  TrackModelBuilder();

  TrackModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderStatus = $v.orderStatus;
      _deliveryDate = $v.deliveryDate;
      _giftTo = $v.giftTo;
      _totalCost = $v.totalCost;
      _deliveredAt = $v.deliveredAt;
      _createdAt = $v.createdAt;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackModel;
  }

  @override
  void update(void Function(TrackModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrackModel build() {
    final _$result = _$v ??
        new _$TrackModel._(
            orderStatus: BuiltValueNullFieldError.checkNotNull(
                orderStatus, 'TrackModel', 'orderStatus'),
            deliveryDate: deliveryDate,
            giftTo: giftTo,
            totalCost: totalCost,
            deliveredAt: deliveredAt,
            createdAt: createdAt,
            id: BuiltValueNullFieldError.checkNotNull(id, 'TrackModel', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
