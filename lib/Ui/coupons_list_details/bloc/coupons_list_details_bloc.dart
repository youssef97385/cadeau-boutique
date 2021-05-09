import 'package:cadeaue_boutique/Ui/coupons_list_details/bloc/coupons_list_details_event.dart';
import 'package:cadeaue_boutique/Ui/coupons_list_details/bloc/coupons_list_details_state.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';
import 'package:cadeaue_boutique/model/coupon_list_model/coupon_list_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CouponsListDetaislBloc  extends Bloc<CouponsListDetailsEvent,CouponsListDetaislState>{
  IRepository _iRepository;

  CouponsListDetaislBloc(this._iRepository):super(CouponsListDetaislState.initail());
  @override
  CouponsListDetaislState get initialState => CouponsListDetaislState.initail();

  @override
  Stream<CouponsListDetaislState> mapEventToState(
      CouponsListDetailsEvent event,
      ) async* {

    if(event is GetCouponsEvent){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..successDetails=false
          ..couponsData.replace([])

        );

        final data = await _iRepository.getCouponsList();

        print(' Success data ${data}');

        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..successDetails=false
          ..couponsData.replace(data)
        );

      } catch (e) {
        print(' Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..couponsData.replace([])
        );

      }
    }


  }

}