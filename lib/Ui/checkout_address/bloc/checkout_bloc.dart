import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/checkout_success/checkout_success.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';

import 'package:cadeaue_boutique/model/reciever_model/reciever_model.dart';
import 'checkout_event.dart';
import 'checkout_state.dart';
class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {




 CheckoutBloc() : super(CheckoutState.initail());

  @override
  CheckoutState get initialState => CheckoutState.initail();

  @override
  Stream<CheckoutState> mapEventToState(
    CheckoutEvent event,
  ) async* {
    if(event is AddReciever){
      try {

        yield state.rebuild((b) => b
          ..recievers.add(RecieverModel(
              (b)=>b
                ..giftTo = event.giftTo
                  ..phoneNumber = event.phoneNumber
                  ..countryCode = event.countryCode
                  ..deliveryDate = event.deliveryDate

          ))
        );

      } catch (e) {
        print('add Error $e');


      }
    }

    // if(event is TryCheckout){
    //   try {
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //
    //     );
    //
    //     final data = await _iRepository.checkoutMultieGift(total: "100" , recieverModel: event.recievers);
    //
    //     print('get wraps Success data ${data}');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = true
    //
    //     );
    //
    //   } catch (e) {
    //     print('GetWraps Error $e');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = "Something went wrong"
    //       ..success = false
    //
    //     );
    //
    //   }
    // }
  }
}