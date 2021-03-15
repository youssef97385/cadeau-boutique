import 'dart:convert';
import 'dart:io';


import 'package:built_collection/src/list.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/base_response/base_response_model.dart';
import 'package:cadeaue_boutique/model/brand_model/base_brand.dart';
import 'package:cadeaue_boutique/model/coupon_model/base_coupon.dart';
import 'package:cadeaue_boutique/model/occasion_model/base_occassion.dart';
import 'package:cadeaue_boutique/model/occasion_model/occasion_model.dart';
import 'package:cadeaue_boutique/model/product_model/product_model.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
import 'package:cadeaue_boutique/model/signup_response/signup_response_model.dart';
import 'package:cadeaue_boutique/core/error/error.dart';
import 'package:cadeaue_boutique/model/slider_model/slider_model.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cadeaue_boutique/model/category_model/base_category.dart';
import 'package:cadeaue_boutique/model/category_model/base_category.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_model.dart';
import 'package:cadeaue_boutique/model/wrap_model/base_wrap.dart';

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
  Future<SignupResponse> signup({String countryCode, String phone, String gender, String name, String password , String lng}) async{
    try {
      final formData = {
        "country_code": countryCode,
        "phone_number": phone,
        "gender": gender,
        "name": name,
        "password":password,
      };
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.post('auth/app/register?lang=en', data: formData);
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
  Future<SignupResponse> signIn({String countryCode, String phone, String password}) async{
    try {
      final formData = {
        "country_code": countryCode,
        "phone_number": phone,
        "password":password,
      };
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.post('auth/app/login?lang=en', data: formData);
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
  Future<SignupResponse> socialSignin({String phoneNumber, String name, String socialToken}) async{
    try {
      final formData = {
        "phone_number": phoneNumber,
        "name": name,
        "social_token":socialToken,
      };
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.post('auth/app/social?lang=en', data: formData);
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
  Future<BuiltList<SliderModel>> getSlider() async{
    try {

      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('get/sliders');
      print('slider Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        // final BaseResponse<BuiltList<SliderModel>> baseResponse =
        // serializers.deserialize(json.decode(response.data),
        //     specifiedType: FullType(
        //       BaseResponse,
        //       [
        //         FullType(
        //           BuiltList,
        //           [
        //             const FullType(SliderModel),
        //           ],
        //         ),
        //       ],
        //     ));

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
  Future<BaseOccasion> getOccasions({int page}) async{
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
                FullType(
                    BaseOccasion
                ),
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
  Future<BaseCategory> getCategory({int page}) async{
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
                FullType(
                    BaseCategory
                ),
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
  Future<BaseBrand> getBrands({int page}) async{
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
                FullType(
                    BaseBrand
                ),
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
  Future<BaseCoupon> getCoupon({int page}) async{
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
                FullType(
                    BaseCoupon
                ),
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
  Future<BuiltList<WrapModel>> getWraps() async{
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('data/get/wraps');
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
  Future<ProductModel> getProductByid({int id}) async{
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
  Future<BuiltList<ProductModel>> getProducts({int id , String type}) async{
    try {
      print("variables "+ type + "  "+id.toString());

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
  Future<BuiltList<OccasionModel>> getNearbyOccasions() async{
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
  Future<BuiltList<ProductModel>> getAllProducts() async{
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


}
