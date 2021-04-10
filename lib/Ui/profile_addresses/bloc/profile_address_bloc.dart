


import 'package:cadeaue_boutique/Ui/profile_addresses/bloc/profile_address_event.dart';
import 'package:cadeaue_boutique/Ui/profile_addresses/bloc/profile_address_state.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileAddressBloc  extends Bloc<ProfileAddressEvent,ProfileAddressState>{


  IRepository _irepository;

  ProfileAddressBloc(this._irepository):super(ProfileAddressState.initail());


  @override
  Stream<ProfileAddressState> mapEventToState(
      ProfileAddressEvent event,
      ) async*{



    if(event is InitEventBloc){
      String city = await _irepository.getCity();
      String stateUser = await _irepository.getState();

      String address = await _irepository.getAddress();
      String zip = await _irepository.getZip();






      yield state.rebuild((b) => b
        ..isLoading = false
        ..error = ""
        ..success = false
        ..city=city
        ..stateUser=stateUser
        ..address=address
        ..zip=zip
        );
    }

    if(event is ProfileAddressRequset){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false);

        final data = await _irepository.editAddress(city: event.city,
        zip_code: event.zip_code,state: event.state,address_details: event.address);

        print('Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true);

      } catch (e) {
        print(' Error $e');
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