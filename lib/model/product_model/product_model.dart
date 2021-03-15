library product_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
import 'package:cadeaue_boutique/model/sizeModel/size_model.dart';
import 'package:cadeaue_boutique/model/color_model/color_model.dart';
import 'package:cadeaue_boutique/model/brand_model/brand_model.dart';
import 'package:cadeaue_boutique/model/category_model/category_model.dart';

part 'product_model.g.dart';

abstract class ProductModel implements Built<ProductModel, ProductModelBuilder> {
  // fields go here

  @nullable
  int get id;

  @BuiltValueField(wireName: "name_ar")
  @nullable
  String get nameAr;

  @BuiltValueField(wireName: "name_en")
  @nullable
  String get nameEn;

  @BuiltValueField(wireName: "media_path")
  @nullable
  String get image;

  @BuiltValueField(wireName: "main_price")
  @nullable
  String get mainPrice;

  @BuiltValueField(wireName: "brand_id")
  @nullable
  int get brandId;

  @BuiltValueField(wireName: "category_id")
  @nullable
  int get categoryId;

  @BuiltValueField(wireName: "sale_price")
  @nullable
  String get salePrice;

  @nullable
  String get description;

  @nullable
  int get likes;


  @BuiltValueField(wireName: "for_gender")
  @nullable
  String get gender;

  @BuiltValueField(wireName: "is_favorite")
  @nullable
  bool get isFavourite;

  @nullable
  CategoryModel get category;

  @nullable
  BrandModel get brand;

  @nullable
  BuiltList<SizeModel> get sizes;

  @nullable
  BuiltList<ColorModel> get colors;


  ProductModel._();

  factory ProductModel([updates(ProductModelBuilder b)]) = _$ProductModel;

  String toJson() {
    return json.encode(serializers.serializeWith(ProductModel.serializer, this));
  }

  static ProductModel fromJson(String jsonString) {
    return serializers.deserializeWith(ProductModel.serializer, json.decode(jsonString));
  }

  static Serializer<ProductModel> get serializer => _$productModelSerializer;
}