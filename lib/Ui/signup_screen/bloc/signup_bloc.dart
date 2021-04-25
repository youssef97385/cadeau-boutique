import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';
import 'package:cadeaue_boutique/Ui/signup_screen/bloc/signup_event.dart';
import 'package:cadeaue_boutique/Ui/signup_screen/bloc/signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  IRepository _irepository;


  SignupBloc(this._irepository) : super(SignupState.initail());

  @override
  SignupState get initialState => SignupState.initail();

  @override
  Stream<SignupState> mapEventToState(
    SignupEvent event,
  ) async* {


    if(event is ResetSignUp){
      yield state.rebuild((b) => b
        ..isLoading = false
        ..error = ""
        ..success = false);
    }
    if(event is TrySignup){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
        ..openHomepage=false);

        final data = await _irepository.signup(phone: event.phone,
            countryCode: event.countryCode , password:  event.password,
        gender: event.gender , name: event.name,smsCode: event.smsCode);

        print('TrySignup Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = false
        ..openHomepage=true);

      } catch (e) {
        print('TrySignup Error222 $e');
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
        print('TrySocial Error11 $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false);
      }
    }


    if(event is TryCheckPhone){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false);

        final data = await _irepository.checkoutPhoneNumber(phone: event.phone,
            countryCode: event.countryCode );

        print('Success data ${data}');

        if(!data)
          yield state.rebuild((b) => b
            ..isLoading = false
            ..error = "This number already exists"
            ..success = false);
        else{
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = false);

        add(TrySendSms((b) => b
          ..countryCode = event.countryCode
          ..phone = event.phone
        ));
        }

      } catch (e) {
        print('TrySignup Error222 $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false);
      }
    }


    if(event is TrySendSms){
          try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false);

      final data = await _irepository.
      sendSms( phone: event.phone,countryCode: event.countryCode);

        print(' Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..smsCode=data.data.toString());

      } catch (e) {
        print(' Error11 $e');
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