// GENERATED CODE - DO NOT MODIFY BY HAND

part of my_card_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyCardModel> _$myCardModelSerializer = new _$MyCardModelSerializer();

class _$MyCardModelSerializer implements StructuredSerializer<MyCardModel> {
  @override
  final Iterable<Type> types = const [MyCardModel, _$MyCardModel];
  @override
  final String wireName = 'MyCardModel';

  @override
  Iterable<Object> serialize(Serializers serializers, MyCardModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.sentCard;
    if (value != null) {
      result
        ..add('sent_cards')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SentCardModel)])));
    }
    value = object.revicedCard;
    if (value != null) {
      result
        ..add('recived_cards')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SentCardModel)])));
    }
    return result;
  }

  @override
  MyCardModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyCardModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'sent_cards':
          result.sentCard.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SentCardModel)]))
              as BuiltList<Object>);
          break;
        case 'recived_cards':
          result.revicedCard.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SentCardModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$MyCardModel extends MyCardModel {
  @override
  final BuiltList<SentCardModel> sentCard;
  @override
  final BuiltList<SentCardModel> revicedCard;

  factory _$MyCardModel([void Function(MyCardModelBuilder) updates]) =>
      (new MyCardModelBuilder()..update(updates)).build();

  _$MyCardModel._({this.sentCard, this.revicedCard}) : super._();

  @override
  MyCardModel rebuild(void Function(MyCardModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyCardModelBuilder toBuilder() => new MyCardModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyCardModel &&
        sentCard == other.sentCard &&
        revicedCard == other.revicedCard;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sentCard.hashCode), revicedCard.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MyCardModel')
          ..add('sentCard', sentCard)
          ..add('revicedCard', revicedCard))
        .toString();
  }
}

class MyCardModelBuilder implements Builder<MyCardModel, MyCardModelBuilder> {
  _$MyCardModel _$v;

  ListBuilder<SentCardModel> _sentCard;
  ListBuilder<SentCardModel> get sentCard =>
      _$this._sentCard ??= new ListBuilder<SentCardModel>();
  set sentCard(ListBuilder<SentCardModel> sentCard) =>
      _$this._sentCard = sentCard;

  ListBuilder<SentCardModel> _revicedCard;
  ListBuilder<SentCardModel> get revicedCard =>
      _$this._revicedCard ??= new ListBuilder<SentCardModel>();
  set revicedCard(ListBuilder<SentCardModel> revicedCard) =>
      _$this._revicedCard = revicedCard;

  MyCardModelBuilder();

  MyCardModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sentCard = $v.sentCard?.toBuilder();
      _revicedCard = $v.revicedCard?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyCardModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyCardModel;
  }

  @override
  void update(void Function(MyCardModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MyCardModel build() {
    _$MyCardModel _$result;
    try {
      _$result = _$v ??
          new _$MyCardModel._(
              sentCard: _sentCard?.build(), revicedCard: _revicedCard?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sentCard';
        _sentCard?.build();
        _$failedField = 'revicedCard';
        _revicedCard?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MyCardModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
