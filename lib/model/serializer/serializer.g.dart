// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(BaseResponse.serializer)
      ..add(BaseWrap.serializer)
      ..add(BrandModel.serializer)
      ..add(CategoryModel.serializer)
      ..add(ColorModel.serializer)
      ..add(CouponModel.serializer)
      ..add(ProductModel.serializer)
      ..add(SignupResponse.serializer)
      ..add(SizeModel.serializer)
      ..add(WrapItem.serializer)
      ..add(WrapModel.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SizeModel)]),
          () => new ListBuilder<SizeModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ColorModel)]),
          () => new ListBuilder<ColorModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SizeModel)]),
          () => new ListBuilder<SizeModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ColorModel)]),
          () => new ListBuilder<ColorModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WrapItem)]),
          () => new ListBuilder<WrapItem>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
