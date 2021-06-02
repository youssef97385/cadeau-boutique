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
                  ..address = event.address


          )

          )
            ..giftTo.add(event.giftTo)
            ..phoneNumber.add(event.phoneNumber)
            ..countryCode.add(event.countryCode)
            ..deliveryDate.add(event.deliveryDate)
            ..address.add(event.address)

        );

      } catch (e) {
        print('add Error $e');


      }
    }
    if(event is EditReciever){
   /*   try {
        yield state.rebuild((b) => b
        ..recievers.replaceRange(event.index, event.index, [event.recieverModel])
            ..recievers.removeAt(event.index+1)
          );
      } catch (e) {
        print('edit  Error $e');
      }*/

      try {

        add(DeleteReciever(
                (b) =>b
              ..index = event.index
        ));
        add(AddReciever((b) =>b..giftTo = event.giftTo
          ..countryCode =event.countryCode
          ..address=event.address
          ..phoneNumber =event.phoneNumber
            ..deliveryDate=event.deliveryDate
        ));
      } catch (e) {
        print('edit  Error $e');
      }
    }
    if(event is DeleteReciever){
      try {

        yield state.rebuild((b) => b
          ..recievers.removeAt(event.index)

        );

      } catch (e) {
        print('remove Error $e');


      }
    }


  }
}