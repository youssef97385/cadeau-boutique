import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/checkout_address/bloc/checkout_event.dart';

import 'package:cadeaue_boutique/Ui/home/page/home.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';
import 'package:cadeaue_boutique/Ui/checkout_success/bloc/checkout_success_bloc.dart';
import 'package:cadeaue_boutique/Ui/checkout_success/bloc/successCheck_event.dart';
import 'package:cadeaue_boutique/Ui/checkout_success/bloc/successCheck_state.dart';

class SuccessCheckBloc extends Bloc<SuccessCheckEvent, SuccessCheckoutState> {
  IRepository _iRepository;


  SuccessCheckBloc(this._iRepository) : super(SuccessCheckoutState.initail());


  @override
  SuccessCheckBloc get initialState =>null;

  @override
  Stream<SuccessCheckoutState> mapEventToState(
      SuccessCheckEvent event,
      ) async* {
    if(event is TryCheckout){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false

        );

        final data = await _iRepository.checkoutMultieGift(recieverModel: event.recievers,total: "100",phone: event.phoneNumber,countryCode: event.countryCode,deliveryDate: event.deliveryDate,giftTo: event.giftTo , address: event.address);

        print('check Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true

        );

      } catch (e) {
        print('check Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false

        );

      }
    }





}}