import 'dart:convert';
import 'dart:io';

import 'package:built_collection/src/list.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/base_response/base_response_model.dart';
import 'package:cadeaue_boutique/model/brand_model/base_brand.dart';
import 'package:cadeaue_boutique/model/cart_model/cart_model.dart';
import 'package:cadeaue_boutique/model/coupon_model/base_coupon.dart';
import 'package:cadeaue_boutique/model/checkout_body/check_body.dart';
import 'package:cadeaue_boutique/model/occasion_model/base_occassion.dart';
import 'package:cadeaue_boutique/model/occasion_model/occasion_model.dart';
import 'package:cadeaue_boutique/model/product_model/product_model.dart';
import 'package:cadeaue_boutique/model/reciever_model/reciever_model.dart';
import 'package:cadeaue_boutique/model/relation_model/relation_model.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
import 'package:cadeaue_boutique/model/signup_response/signup_response_model.dart';
import 'package:cadeaue_boutique/core/error/error.dart';
import 'package:cadeaue_boutique/model/slider_model/slider_model.dart';
import 'package:cadeaue_boutique/model/user_info_model/user_info_model.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_item.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cadeaue_boutique/model/category_model/base_category.dart';
import 'package:cadeaue_boutique/model/category_model/base_category.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_model.dart';
import 'package:cadeaue_boutique/model/wrap_model/base_wrap.dart';
import 'package:cadeaue_boutique/model/track_home_model/TrackHomeModel.dart';
import 'package:cadeaue_boutique/core/response_hassan.dart'as response_hassan;
import 'package:cadeaue_boutique/model/track_model/track_model.dart';
import 'package:cadeaue_boutique/model/checkout_body/checkout_body.dart';

import '../../model/wrap_model/wrap_item.dart';
import 'Ihttp_helper.dart';

import 'dart:io';
import 'package:path/path.dart';
import 'package:cookie_jar/cookie_jar.dart';

class HttpHelper implements IHttpHelper {
  final Dio _dio;

  var cookieJar = CookieJar();

  HttpHelper(this._dio) {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
      ),
    );
    _dio.interceptors.add(CookieManager(cookieJar));
  }

  @override
  Future<SignupResponse> signup(
      {String countryCode,
      String phone,
      String gender,
      String name,
      String password,
      String lng}) async {
    try {
      final formData = {
        "country_code": countryCode,
        "phone_number": phone,
        "gender": gender,
        "name": name,
        "password": password,
      };
      _dio.interceptors.add(CookieManager(cookieJar));
      final response =
          await _dio.post('auth/app/register?lang=en', data: formData);
      print('signup Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final SignupResponse baseResponse = serializers.deserialize(
            json.decode(response.data),
            specifiedType: FullType(SignupResponse));

        print("signup status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<SignupResponse> signIn(
      {String countryCode, String phone, String password}) async {
    try {
      final formData = {
        "country_code": countryCode,
        "phone_number": phone,
        "password": password,
      };
      _dio.interceptors.add(CookieManager(cookieJar));
      final response =
          await _dio.post('auth/app/login?lang=en', data: formData);
      print('signin Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final SignupResponse baseResponse = serializers.deserialize(
            json.decode(response.data),
            specifiedType: FullType(SignupResponse));

        print("signin status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<SignupResponse> socialSignin(
      {String phoneNumber, String name, String socialToken}) async {
    try {
      final formData = {
        "phone_number": phoneNumber,
        "name": name,
        "social_token": socialToken,
      };
      _dio.interceptors.add(CookieManager(cookieJar));
      final response =
          await _dio.post('auth/app/social?lang=en', data: formData);
      print('social Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final SignupResponse baseResponse = serializers.deserialize(
            json.decode(response.data),
            specifiedType: FullType(SignupResponse));

        print("signin status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BuiltList<SliderModel>> getSlider() async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('get/sliders');
      print('slider Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {


        final BaseResponse<BuiltList<SliderModel>> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    FullType(
                      BuiltList,
                      [
                        const FullType(SliderModel),
                      ],
                    ),
                  ],
                ));

        print("slider status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BaseOccasion> getOccasions({int page}) async {
    print("picker2");
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('data/get/occasions?page=$page');
      print('occasion Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<BaseOccasion> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    FullType(BaseOccasion),
                  ],
                ));

        print("occasion status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BaseCategory> getCategory({int page}) async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('data/get/categories?page=$page');
      print('category Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<BaseCategory> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    FullType(BaseCategory),
                  ],
                ));

        print("category status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BaseBrand> getBrands({int page}) async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('data/get/brands?page=$page');
      print('brand Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<BaseBrand> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    FullType(BaseBrand),
                  ],
                ));

        print("brand status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BaseCoupon> getCoupon({int page}) async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('data/get/coupons?page=$page');
      print('coupon Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<BaseCoupon> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    FullType(BaseCoupon),
                  ],
                ));

        print("coupon status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BuiltList<WrapModel>> getWraps({bool isGlobalWrap}) async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get(isGlobalWrap?'data/get/wraps/without/paginate?wrap_type=global':'data/get/wraps/without/paginate');
      print('wrap Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<BuiltList<WrapModel>> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    FullType(
                      BuiltList,
                      [
                        const FullType(WrapModel),
                      ],
                    ),
                  ],
                ));

        print("wrap status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<ProductModel> getProductByid({int id}) async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('app/gift/$id/get');
      print('product Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<ProductModel> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    const FullType(ProductModel),
                  ],
                ));

        print("product status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BuiltList<ProductModel>> getProducts({int id, String type}) async {
    try {
      print("variables " + type + "  " + id.toString());

      _dio.interceptors.add(CookieManager(cookieJar));
      String myType;

      final response = await _dio.get('app/gift/$type/$id/get');
      print('products Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<BuiltList<ProductModel>> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    FullType(
                      BuiltList,
                      [
                        const FullType(ProductModel),
                      ],
                    ),
                  ],
                ));

        print("product list status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BuiltList<OccasionModel>> getNearbyOccasions() async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('get/nearby/occasion');
      print('nearby Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<BuiltList<OccasionModel>> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    FullType(
                      BuiltList,
                      [
                        const FullType(OccasionModel),
                      ],
                    ),
                  ],
                ));

        print("nearby status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BuiltList<ProductModel>> getAllProducts() async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      String myType;

      final response = await _dio.get('app/gift/all');
      print('all products Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<BuiltList<ProductModel>> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    FullType(
                      BuiltList,
                      [
                        const FullType(ProductModel),
                      ],
                    ),
                  ],
                ));

        print("all product list status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<WrapItem> getWrapByid({int id}) async {
    print("wrap888");
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('app/wrap/$id/get');
      print('wrap Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<WrapItem> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    const FullType(WrapItem),
                  ],
                ));

        print("wrap status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BuiltList<RelationModel>> getRelation() async {
    print("relation3");
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response =
          await _dio.get('data/get/main_relations/without/paginate');
      print('relation Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        print("relation4");
        final BaseResponse<BuiltList<RelationModel>> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    FullType(
                      BuiltList,
                      [
                        const FullType(RelationModel),
                      ],
                    ),
                  ],
                ));

        print("relation status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          print("relation5");
          throw NetworkException();
        }
      } else {
        print("relation6");
        throw NetworkException();
      }
    } catch (e) {
      print("relation7$e");
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<bool> addToFav({int productId, String token}) async {
    try {
      final formData = {
        "gift_id": productId,
      };
      print("add1 " + productId.toString() + " " + token);

      _dio.interceptors.add(CookieManager(cookieJar));
      String myType;
      _dio.options.headers["authorization"] = "token ${token}";

      final response = await _dio.post('app/gift/add/favorite',
          data: formData,
          options: Options(headers: {"Authorization": 'Bearer ' + token}));
      print('add favourites Response StatusCode ${response.statusCode}');

      print("add2 " + response.toString());
      if (response.statusCode == 200) {
        return true;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BuiltList<ProductModel>> getFavourites({String token}) async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      String myType;

      final response = await _dio.get('app/gift/get/favorite',
          options: Options(headers: {"Authorization": 'Bearer ' + token}));
      print('favourites Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<BuiltList<ProductModel>> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    FullType(
                      BuiltList,
                      [
                        const FullType(ProductModel),
                      ],
                    ),
                  ],
                ));

        print("favourites list status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<bool> removeFavourite({int productId, String token}) async {
    try {
      final formData = {
        "gift_id": productId,
      };

      _dio.interceptors.add(CookieManager(cookieJar));
      String myType;
      _dio.options.headers["authorization"] = "token ${token}";

      final response = await _dio.post('app/gift/remove/favorite',
          data: formData,
          options: Options(headers: {"Authorization": 'Bearer ' + token}));
      print('add favourites Response StatusCode ${response.statusCode}');

      print("add2 " + response.toString());
      if (response.statusCode == 200) {
        return true;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<CartModel> addGlobalWrap(
      {int wrapId, int wrapColor, String token}) async {
    try {
      final formData = {
        "wrap_id": wrapId,
        "wrap_color": wrapColor,
      };

      _dio.interceptors.add(CookieManager(cookieJar));

      // _dio.options.headers["authorization"] = "token ${token}";

      final response = await _dio.post('cart/add/item',
          data: formData,
          options: Options(headers: {"Authorization": 'Bearer ' + token}));
      print('add global wrap Response StatusCode ${response.statusCode}');

      final BaseResponse<CartModel> baseResponse =
          serializers.deserialize(json.decode(response.data),
              specifiedType: FullType(
                BaseResponse,
                [
                  const FullType(CartModel),
                ],
              ));

      if (response.statusCode == 200) {
        return baseResponse.data;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<CartModel> addSong({String song, String token}) async {
    try {
      final formData = {
        "song_link": song,
      };

      _dio.interceptors.add(CookieManager(cookieJar));

      // _dio.options.headers["authorization"] = "token ${token}";

      final response = await _dio.post('cart/add/song',
          data: formData,
          options: Options(headers: {"Authorization": 'Bearer ' + token}));
      print('add song Response StatusCode ${response.statusCode}');

      final BaseResponse<CartModel> baseResponse =
          serializers.deserialize(json.decode(response.data),
              specifiedType: FullType(
                BaseResponse,
                [
                  const FullType(CartModel),
                ],
              ));

      if (response.statusCode == 200) {
        return baseResponse.data;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<CartModel> addToCart(
      {int giftId,
      int giftColorId,
      int wrapId,
      int wrapColorId,
      String token}) async {
    try {
      final formData = {
        "gift_id": giftId,
        "gift_color_id": giftColorId,
        "wrap_id": wrapId,
        "wrap_color_id": wrapColorId
      };

      _dio.interceptors.add(CookieManager(cookieJar));

      // _dio.options.headers["authorization"] = "token ${token}";

      final response = await _dio.post('cart/add/item',
          data: formData,
          options: Options(headers: {"Authorization": 'Bearer ' + token}));
      print('add song Response StatusCode ${response.statusCode}');

      final BaseResponse<CartModel> baseResponse =
          serializers.deserialize(json.decode(response.data),
              specifiedType: FullType(
                BaseResponse,
                [
                  const FullType(CartModel),
                ],
              ));

      if (response.statusCode == 200) {
        return baseResponse.data;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<CartModel> getCartInfo({String token}) async {
    print("cart info1");
    try {
      _dio.interceptors.add(CookieManager(cookieJar));

      // _dio.options.headers["authorization"] = "token ${token}";

      final response = await _dio.get('cart/get/information',
          options: Options(headers: {"Authorization": 'Bearer ' + token}));
      print('get cart StatusCode ${response.statusCode}');

      final BaseResponse<CartModel> baseResponse =
          serializers.deserialize(json.decode(response.data),
              specifiedType: FullType(
                BaseResponse,
                [
                  const FullType(CartModel),
                ],
              ));

      if (response.statusCode == 200) {
        return baseResponse.data;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<CartModel> removeCartItem({int cartItemId, String token}) async {
    try {
      final formData = {
        "details_id": cartItemId,
      };

      _dio.interceptors.add(CookieManager(cookieJar));

      // _dio.options.headers["authorization"] = "token ${token}";

      final response = await _dio.post('cart/remove/item',
          data: formData,
          options: Options(headers: {"Authorization": 'Bearer ' + token}));
      print('remove cart item Response StatusCode ${response.statusCode}');

      final BaseResponse<CartModel> baseResponse =
          serializers.deserialize(json.decode(response.data),
              specifiedType: FullType(
                BaseResponse,
                [
                  const FullType(CartModel),
                ],
              ));

      if (response.statusCode == 200) {
        return baseResponse.data;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<CartModel> removeGlobalWrap({String token}) async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));

      // _dio.options.headers["authorization"] = "token ${token}";

      final response = await _dio.post('remove/global/warp',
          options: Options(headers: {"Authorization": 'Bearer ' + token}));
      print('remove global wrap StatusCode ${response.statusCode}');

      final BaseResponse<CartModel> baseResponse =
          serializers.deserialize(json.decode(response.data),
              specifiedType: FullType(
                BaseResponse,
                [
                  const FullType(CartModel),
                ],
              ));

      if (response.statusCode == 200) {
        return baseResponse.data;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<CartModel> removeSong({String token}) async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));

      // _dio.options.headers["authorization"] = "token ${token}";

      final response = await _dio.post('cart/remove/song',
          options: Options(headers: {"Authorization": 'Bearer ' + token}));
      print('remove song StatusCode ${response.statusCode}');

      final BaseResponse<CartModel> baseResponse =
          serializers.deserialize(json.decode(response.data),
              specifiedType: FullType(
                BaseResponse,
                [
                  const FullType(CartModel),
                ],
              ));

      if (response.statusCode == 200) {
        return baseResponse.data;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }


   static var editProfileRQType=FullType(BaseResponse,[FullType(UserInfoModel)]);
  @override
  Future<UserInfoModel> editProfileRQ({
    String token,
    String countryCode,
    String phone,
    String gender,
    String name,
    String email,
    String date}) async {
    try {
      final formData = {
        "country_code": countryCode,
        "phone_number": phone,
        "gender": gender,
        "name": name,
        "email": email,
        "date_of_birth": date,
      };
      _dio.interceptors.add(CookieManager(cookieJar));
      final response =
      await _dio.post(
          'setting/edit/info?lang=en',
          options: Options(headers: {"Authorization": 'Bearer ' + token}),
          data: formData);
      print(' Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<UserInfoModel> baseResponse = serializers.deserialize(
            json.decode(response.data),
            specifiedType: editProfileRQType);

        print("signup status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<bool> editAddress({
    String token,
    String city, String
    state, String address_details, String zip_code}) async {
    try {
      final formData = {
        "city": city,
        "state": state,
        "address_details": address_details,
        "zip_code": zip_code,
      };
      _dio.interceptors.add(CookieManager(cookieJar));
      final response =
      await _dio.post(
          'setting/edit/details?lang=en',
          options: Options(headers: {"Authorization": 'Bearer ' + token}),
          data: formData);
      print(' Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        /*final BaseResponse<UserInfoModel> baseResponse = serializers.deserialize(
            json.decode(response.data),
            specifiedType: editProfileRQType);*/

        print("status : ${true}");

      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BuiltList<TrackModel>> getTracksHome({String token}) async {


    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      String myType;

      final response = await _dio.get('order/new',
          options: Options(headers: {"Authorization": 'Bearer ' + token}));
      print(' Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<BuiltList<TrackModel>> baseResponse =
        serializers.deserialize(json.decode(response.data),
            specifiedType: FullType(
              BaseResponse,
              [
                FullType(
                  BuiltList,
                  [
                    const FullType(TrackModel),
                  ],
                ),
              ],
            ));

        print(" list status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<bool> saveFirebaseToken(String fireToken,String serverToken)async {


    try {
      final formData = {
        "token": fireToken
      };

      _dio.interceptors.add(CookieManager(cookieJar));


      final response = await _dio.post('fire_base/token/set',
          options: Options(headers: {"Authorization": 'Bearer ' + serverToken}),
        data: formData
      );
      print(' Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        return true;

        }
       else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }


  @override
  Future<bool> logoutRQ(String token)async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('auth/app/logout',
          options: Options(headers: {"Authorization": 'Bearer ' + token})

      );
      print(' Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        return true;

      }
      else {
        throw NetworkException();

      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<BuiltList<ProductModel>> filter({int occasionId,
    int relationId, String gender,
    String minPrice, String maxPrice,
    String age}) async{
    try {


      print("filter vars : occasionId:$occasionId   relationId $relationId  genderId $gender  minPrics $minPrice  macPrice $maxPrice  age $age");
      _dio.interceptors.add(CookieManager(cookieJar));

      String url ="";

      ///un comment when data ready
      ///
      ///
      /// *****


      if(minPrice != "null"){

         url ="app/gift/search?min_price=$minPrice";
      }else{

         url ="app/gift/search?min_price=0";
      }

      if(occasionId != null){

        url  = url +"&relation_id=$relationId";
      }
      if(occasionId != null){

        url = url+"&occasions_id=$occasionId";
      }
      if(gender != null){

        url = url +"&gender=$gender";
      }
      if(maxPrice != "null"){

        url = url + "&max_price=$maxPrice";
      }
      if(age != null){

        url = url + "&age=$age";
      }

      print("final url : $url");

      final response = await _dio.get(url);
      print('products Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<BuiltList<ProductModel>> baseResponse =
        serializers.deserialize(json.decode(response.data),
            specifiedType: FullType(
              BaseResponse,
              [
                FullType(
                  BuiltList,
                  [
                    const FullType(ProductModel),
                  ],
                ),
              ],
            ));

        print("filter list status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<bool> checkoutMultieGift({

    BuiltList<RecieverModel> recieverModel , String total , String token,
    BuiltList<String> giftTo ,
    BuiltList<String> deliveryDate ,
    BuiltList<String> countryCode ,
    BuiltList<String> phone ,
  }) async{
    try {

      _dio.interceptors.add(CookieManager(cookieJar));

      print("check vars: ${giftTo.toString()}");
      // CheckoutBody checkoutBody = CheckoutBody(total: total,
      // countryCode: countryCode,deliveryDate: deliveryDate,giftTo: giftTo,phoneNumber: phone);

      CheckBody checkBody = CheckBody((b)=>b

        ..gift_to = giftTo.toBuilder()
          ..delivery_date = deliveryDate.toBuilder()
          ..country_code = countryCode.toBuilder()
          ..phone_number = phone.toBuilder()
          ..total_cost = total


      );

      var body = checkBody.toJson();



      // var body =checkoutBody.toJson();
      //
      print("json body"+body.toString());

      final response = await _dio.post('cart/checkout',data: body,  options: Options(headers: {"Authorization": 'Bearer ' + token}));
      print('checkout Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        // final BaseResponse<BuiltList<OccasionModel>> baseResponse =
        // serializers.deserialize(json.decode(response.data),
        //     specifiedType: FullType(
        //       BaseResponse,
        //       [
        //         FullType(
        //           BuiltList,
        //           [
        //             const FullType(OccasionModel),
        //           ],
        //         ),
        //       ],
        //     ));


        if (response.statusCode == 200) {
          return true;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }

  }

  @override
  Future<BuiltList<WrapItem>> getWrapsBygiftId({int giftId , String token}) async{
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('cart/get/wraps/by/gift/$giftId', options: Options(headers: {"Authorization": 'Bearer ' + token}));
      print('wrap Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BaseResponse<BuiltList<WrapItem>> baseResponse =
        serializers.deserialize(json.decode(response.data),
            specifiedType: FullType(
              BaseResponse,
              [
                FullType(
                  BuiltList,
                  [
                    const FullType(WrapItem),
                  ],
                ),
              ],
            ));

        print("wrap status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse.data;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }



}
