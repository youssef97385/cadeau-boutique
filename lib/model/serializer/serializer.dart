library serializer;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:cadeaue_boutique/data/http_helper/http_helper.dart';
import 'package:cadeaue_boutique/model/base_response/base_response_model.dart';
import 'package:cadeaue_boutique/model/category_model/category_model.dart';
import 'package:cadeaue_boutique/model/signup_response/signup_response_model.dart';
import 'package:cadeaue_boutique/model/slider_model/slider_model.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/base_response/base_response_model.dart';
import 'package:cadeaue_boutique/model/cart_model/cart_item.dart';
import 'package:cadeaue_boutique/model/cart_model/cart_model.dart';
import 'package:cadeaue_boutique/model/signup_response/signup_response_model.dart';
import 'package:cadeaue_boutique/model/slider_model/slider_model.dart';
import 'package:cadeaue_boutique/model/occasion_model/base_occassion.dart';
import 'package:cadeaue_boutique/model/occasion_model/occasion_model.dart';
import 'package:cadeaue_boutique/model/category_model/category_model.dart';
import 'package:cadeaue_boutique/model/category_model/base_category.dart';
import 'package:cadeaue_boutique/model/brand_model/brand_model.dart';
import 'package:cadeaue_boutique/model/brand_model/base_brand.dart';
import 'package:cadeaue_boutique/model/coupon_model/coupon_model.dart';
import 'package:cadeaue_boutique/model/coupon_model/base_coupon.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_model.dart';
import 'package:cadeaue_boutique/model/wrap_model/base_wrap.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_item.dart';
import 'package:cadeaue_boutique/model/color_model/color_model.dart';
import 'package:cadeaue_boutique/model/sizeModel/size_model.dart';
import 'package:cadeaue_boutique/model/product_model/product_model.dart';
import 'package:cadeaue_boutique/model/relation_model/relation_model.dart';
import 'package:cadeaue_boutique/model/user_info_model/user_info_model.dart';
import 'package:cadeaue_boutique/model/track_model/track_model.dart';
import 'package:cadeaue_boutique/model/details_user/details_user.dart';



import 'package:cadeaue_boutique/model/reciever_model/reciever_model.dart';
part 'serializer.g.dart';

@SerializersFor(const [
  SignupResponse,
  BaseResponse,
  CategoryModel,
  BrandModel,
  CouponModel,
  BaseWrap,
  ProductModel,
  ColorModel,
  SizeModel,
  WrapItem,
  OccasionModel,
  BaseCoupon,
  BaseBrand,
  BrandModel,
  CartItem,
  CartModel,
  BaseCategory,
  BaseOccasion,
  RelationModel,
  SliderModel,
  UserInfoModel,
  TrackModel,
  DetailsUser




])
final Serializers serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())

  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(SliderModel),
        ],
      )),
          () => ListBuilder<SliderModel>())

  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          FullType(
            BuiltList,
            [
              const FullType(SliderModel),
            ],
          ),
        ],
      )),
          () => BaseResponseBuilder<BuiltList<SliderModel>>())

  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          FullType(
            BuiltList,
            [
              const FullType(OccasionModel),
            ],
          ),
        ],
      )),
          () => BaseResponseBuilder<BuiltList<OccasionModel>>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(OccasionModel),
        ],
      )),
          () => ListBuilder<OccasionModel>())
  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          const FullType(ProductModel),
        ],
      )),
          () => BaseResponseBuilder<ProductModel>())
  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          const FullType(WrapItem),
        ],
      )),
          () => BaseResponseBuilder<WrapItem>())

  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          const FullType(BaseOccasion),
        ],
      )),
          () => BaseResponseBuilder<BaseOccasion>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(OccasionModel),
        ],
      )),
          () => ListBuilder<OccasionModel>())

  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          const FullType(BaseCategory),
        ],
      )),
          () => BaseResponseBuilder<BaseCategory>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(CategoryModel),
        ],
      )),
          () => ListBuilder<CategoryModel>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(CategoryModel),
        ],
      )),
          () => ListBuilder<CategoryModel>())

  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          const FullType(BaseBrand),
        ],
      )),
          () => BaseResponseBuilder<BaseBrand>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(BrandModel),
        ],
      )),
          () => ListBuilder<BrandModel>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(BrandModel),
        ],
      )),
          () => ListBuilder<BrandModel>())


  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          const FullType(BaseCoupon),
        ],
      )),
          () => BaseResponseBuilder<BaseCoupon>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(CouponModel),
        ],
      )),
          () => ListBuilder<CouponModel>())

  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          FullType(
            BuiltList,
            [
              const FullType(WrapModel),
            ],
          ),
        ],
      )),
          () => BaseResponseBuilder<BuiltList<WrapModel>>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(WrapModel),
        ],
      )),
          () => ListBuilder<WrapModel>())

  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          FullType(
            BuiltList,
            [
              const FullType(BaseWrap),
            ],
          ),
        ],
      )),
          () => BaseResponseBuilder<BuiltList<BaseWrap>>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(BaseWrap),
        ],
      )),
          () => ListBuilder<BaseWrap>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(WrapItem),
        ],
      )),
          () => ListBuilder<WrapItem>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(WrapItem),
        ],
      )),
          () => ListBuilder<WrapItem>())
  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          FullType(
            BuiltList,
            [
              const FullType(ProductModel),
            ],
          ),
        ],
      )),
          () => BaseResponseBuilder<BuiltList<ProductModel>>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(ProductModel),
        ],
      )),
          () => ListBuilder<ProductModel>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(RelationModel),
        ],
      )),
          () => ListBuilder<RelationModel>())
  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          FullType(
            BuiltList,
            [
              const FullType(RelationModel),
            ],
          ),
        ],
      )),
          () => BaseResponseBuilder<BuiltList<RelationModel>>())


  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          const FullType(CartModel),
        ],
      )),
          () => BaseResponseBuilder<CartModel>())
  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(CartModel),
        ],
      )),
          () => ListBuilder<CartModel>())

    ..addBuilderFactory(HttpHelper.editProfileRQType,
            ()=>BaseResponseBuilder<UserInfoModel>() )

  ..addBuilderFactory(
      (FullType(
        BaseResponse,
        [
          FullType(
            BuiltList,
            [
              const FullType(TrackModel),
            ],
          ),
        ],
      )),
          () => BaseResponseBuilder<BuiltList<TrackModel>>())

  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(TrackModel),
        ],
      )),
          () => ListBuilder<TrackModel>())



).build();