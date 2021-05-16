

import 'package:cadeaue_boutique/Ui/checkout_coupons/bloc/checkout_coupons_event.dart';
import 'package:cadeaue_boutique/Ui/checkout_coupons/bloc/checkout_coupons_state.dart';
import 'package:cadeaue_boutique/model/reciver_checkout_coupons_model/reciver_coupons_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutCouponsBloc extends Bloc<CheckoutCouponsEvent,CheckoutCouponsState>{


  CheckoutCouponsBloc():super(CheckoutCouponsState.initail());

  @override
  CheckoutCouponsState get initialState => CheckoutCouponsState.initail();

  @override
  Stream<CheckoutCouponsState> mapEventToState(
      CheckoutCouponsEvent event,
      ) async* {
    if(event is AddReciever){
      try {

        yield state.rebuild((b) => b
          ..recievers.add(ReciverCouponsModel(
                  (b)=>b
                ..giftTo = event.giftTo
                ..phoneNumber = event.phoneNumber
                ..countryCode = event.countryCode


          )

          )
          ..giftTo.add(event.giftTo)
          ..phoneNumber.add(event.phoneNumber)
          ..countryCode.add(event.countryCode)

        );

      } catch (e) {
        print('add Error $e');


      }
    }

    if(event is EditReciever){
      try {

        add(DeleteReciever(
                (b) =>b
              ..index = event.index
        ));
        add(AddReciever((b) =>b..giftTo = event.giftTo
          ..countryCode =event.countryCode
          ..phoneNumber =event.phoneNumber
        ));
      } catch (e) {
        print('edit  Error $e');
      }
    }

    if(event is DeleteReciever){
      try {

        yield state.rebuild((b) => b
          ..recievers.removeAt(event.index)
            ..giftTo.removeAt(event.index)
            ..phoneNumber.removeAt(event.index)
            ..countryCode.removeAt(event.index)

        );

      } catch (e) {
        print('remove Error $e');


      }
    }



  }
}