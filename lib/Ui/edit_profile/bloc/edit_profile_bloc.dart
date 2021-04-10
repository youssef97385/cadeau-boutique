


import 'package:cadeaue_boutique/data/repository/irepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cadeaue_boutique/Ui/edit_profile/bloc/edit_profile_event.dart';
import 'package:cadeaue_boutique/Ui/edit_profile/bloc/edit_profile_state.dart';

class EditProfileBloc  extends Bloc<EditProfileEvent,EditProfileState>{
  IRepository _irepository;

  EditProfileBloc(this._irepository):super(EditProfileState.initail());

  @override
  Stream<EditProfileState> mapEventToState(
      EditProfileEvent event,
      ) async*{

    if(event is TryEditProfile){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false);

        final data = await _irepository.editProfileRQ(phone: event.phone,
            countryCode: event.countryCode , name:event.name,
            gender: event.gender , date: event.date_of_birth,email: event.email);

        print('TryEditPrfile Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true);

      } catch (e) {
        print('TryEditPrfile Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false);
      }
    }



    if(event is InitEvent){

      String name = await _irepository.getNameUser();
      String country = await _irepository.getCountryCode();
      int phone = await _irepository.getPhoneNumber();
      String email = await _irepository.getEmail();
      String gender = await _irepository.getGender();
      String dateBirthUser = await _irepository.getDate();


      print("$name");
      print("$country");
      print("$phone");
      print("$email");
      print("------------------------------------");
      yield state.rebuild((b) => b
        ..isLoading = false
        ..error = ""
        ..success = false
      ..gender=gender
      ..name=name
      ..email=email
      ..phoneNumber=phone
      ..countryCode=country
      ..dateBirth=dateBirthUser);
    }

    if(event is ClearError){
      yield state.rebuild((b) => b..error = "");
    }


  }
}