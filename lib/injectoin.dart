import 'package:cadeaue_boutique/Ui/all_products_screen/bloc/products_bloc.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

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
}
