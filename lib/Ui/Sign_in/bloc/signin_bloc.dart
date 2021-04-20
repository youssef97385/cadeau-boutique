import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/bloc/signin_event.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/bloc/signin_state.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {

  IRepository _irepository ;

  SigninBloc(this._irepository) : super(SigninState.initail());

  @override
  SigninState get initialState => SigninState.initail();

  @override
  Stream<SigninState> mapEventToState(
    SigninEvent event,
  ) async* {


    final loginType=await _irepository.getLoginType();
    final socialToken=await _irepository.getSocialToken();
    final name=await _irepository.getNameUser();
    final password=await _irepository.getPassword();
    final countryCode=await _irepository.getCountryCode();
    final phoneNumber=await _irepository.getPhoneNumber();


    if(event is InitStateSignUp){


      if(loginType==LOGIN_TYPE_SOCIAL&& !state.isLoading )
        add(TrySocialSignin((b) => b
          ..phoneNumber = '${DateTime.now().microsecondsSinceEpoch}'
          ..socialToken = socialToken
          ..name = name));

      else if(loginType==LOGIN_TYPE_NORMAL&& !state.isLoading)
        add(TrySignin((b) => b
          ..password = password
          ..countryCode = countryCode
          ..phone = phoneNumber.toString()));

    }

    if(event is TrySignin){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false);

        final data = await _irepository.signin(phone: event.phone,
            countryCode: event.countryCode , password:  event.password,
            );

        print('TrySignin Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true);

      } catch (e) {
        print('TrySignin Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false);
      }
    }

    if(event is TrySocialSignin){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false);

        final data = await _irepository.socialSignin(name: event.name , phoneNumber: event.phoneNumber , socialToken: event.socialToken);

        print('TrySocial Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true);

      } catch (e) {
        print('TrySocial Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false);
      }
    }

    if(event is ClearError){
      yield state.rebuild((b) => b..error = "");
    }
  }
}