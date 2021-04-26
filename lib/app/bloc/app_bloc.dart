import 'package:cadeaue_boutique/data/repository/irepository.dart';
import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/core/app_language.dart';

import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  IRepository _repository;

  AppBloc(this._repository) : super( AppState.initail());

  @override
  AppState get initialState => AppState.initail();



  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    if (event is IniEvent) {
      var langNumber=AppLanguageKeys.EN;
      final result = await _repository.getIsLogin();
      yield state.rebuild((b) => b..loginState = result);


      print("LLLLLLLLLLLLL ${event.langDevice}");
      if(event.langDevice.contains("en")){
       langNumber=AppLanguageKeys.EN;
      print("lang 0");}
      else if(event.langDevice.contains("ar")) { langNumber=AppLanguageKeys.AR;
      print("lang 1");}

      else   langNumber=AppLanguageKeys.EN;
     await _repository.setAppLanguage(langNumber);

      final language = await _repository.getAppLanguage();
      // yield state.rebuild((b) => b..appLanguage = language);
      // changeAppLanguage(state.appLanguage);

      final loginType=await _repository.getLoginType();
      final socialToken=await _repository.getSocialToken();
      final name=await _repository.getNameUser();
      final password=await _repository.getPassword();
      final countryCode=await _repository.getCountryCode();
      final phoneNumber=await _repository.getPhoneNumber();

      yield state.rebuild((b) => b
        ..loginType=loginType
        ..socialToken=socialToken
        ..name=name
        ..password=password
        ..countryCode=countryCode
        ..phoneNumber=phoneNumber.toString()
        ..appLanguage = language
        ..appLanguageString="${event.langDevice}"
      );
       changeAppLanguage(state.appLanguage);


    }

    if(event is SaveTokenFirebase){
      var item= await _repository.saveFirebaseToken(event.fireToken);

    }
  }
}
