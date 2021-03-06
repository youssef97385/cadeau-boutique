import 'package:cadeaue_boutique/Ui/all_products_screen/bloc/products_bloc.dart';
import 'package:cadeaue_boutique/Ui/filter_result/bloc/search_bloc.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_bloc.dart';
import 'package:cadeaue_boutique/Ui/profile_addresses/bloc/profile_address_bloc.dart';
import 'package:cadeaue_boutique/Ui/wrap_screen/bloc/wrap_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'Ui/checkout_address/bloc/checkout_bloc.dart';
import 'app/bloc/app_bloc.dart';
import 'core/constent.dart';
import 'data/http_helper/Ihttp_helper.dart';
import 'data/http_helper/http_helper.dart';
import 'data/prefs_helper/iprefs_helper.dart';
import 'data/prefs_helper/prefs_helper.dart';
import 'data/repository/irepository.dart';
import 'data/repository/repository.dart';
import 'data/db_helper/Idb_helper.dart';
import 'data/db_helper/db_helper.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/bloc/signin_bloc.dart';
import 'package:cadeaue_boutique/Ui/signup_screen/bloc/signup_bloc.dart';
import 'package:cadeaue_boutique/Ui/product_screen/bloc/product_bloc.dart';
import 'package:cadeaue_boutique/Ui/picker_screen/bloc/filter_bloc.dart';
import 'package:cadeaue_boutique/Ui/wishlist_screen/bloc/favourite_bloc.dart';
import 'package:cadeaue_boutique/Ui/cart_screen/bloc/cart_bloc.dart';
import 'package:cadeaue_boutique/Ui/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:cadeaue_boutique/Ui/track_screen/bloc/track_screen_bloc.dart';
import 'package:cadeaue_boutique/Ui/checkout_success/bloc/checkout_success_bloc.dart';

final sl = GetIt.instance;

Future iniGetIt() async {
  sl.registerLazySingleton(() => ((Dio(BaseOptions(
      baseUrl: BaseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "charset": "utf-8",
        "Accept-Charset": "utf-8"
      },
      responseType: ResponseType.plain)))));

  // data
  sl.registerLazySingleton<IDbHelper>(() => DbHelper());
  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));
  sl.registerLazySingleton<IRepository>(() => Repository(sl(), sl(), sl()));



  /// AppBloc

  sl.registerFactory(() => AppBloc(sl()));


  ///signupBloc

  sl.registerFactory(() => SignupBloc(sl()));

  ///signinBloc

  sl.registerFactory(() => SigninBloc(sl()));


  ///HomeBloc

  sl.registerFactory(() => HomeBloc(sl()));

  ///Productbloc

  sl.registerFactory(() => ProductBloc(sl()));


  ///Producstbloc

  sl.registerFactory(() => ProductsBloc(sl()));

  ///Wraploc

  sl.registerFactory(() => WrapBloc(sl()));

  ///FilterBloc

  sl.registerFactory(() => FilterBloc(sl()));

  ///FavBloc

  sl.registerFactory(() => FavouriteBloc(sl()));

  ///CartBloc

  sl.registerFactory(() => CartBloc(sl()));

  ///SearchBloc

  sl.registerFactory(() => SearchBloc(sl()));

 ///checkoutBloc

  sl.registerFactory(() => CheckoutBloc());

  ///check

  sl.registerFactory(() => SuccessCheckBloc(sl()));


  /// Edit Profile

  sl.registerFactory(() => EditProfileBloc(sl()));

  ///  Profile Address
  sl.registerFactory(() => ProfileAddressBloc(sl()));


  ///  Profile Address
  sl.registerFactory(() => TrackScreenBloc(sl()));
}
