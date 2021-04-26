import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/wrap_screen/bloc/wrap_event.dart';
import 'package:cadeaue_boutique/Ui/wrap_screen/bloc/wrap_state.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';
import 'package:flutter/cupertino.dart';

class WrapBloc extends Bloc<WrapEvent, WrapState> {
  IRepository _iRepository;
  WrapBloc(this._iRepository) : super(WrapState.initail());
  @override
  WrapState get initialState => WrapState.initail();

  @override
  Stream<WrapState> mapEventToState(
    WrapEvent event,
  ) async* {
    if(event is GetWrap){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..wrap = null
        );

        final data = await _iRepository.getWrapByid(id: event.id);

        print('get wrap Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..wrap.replace(data)
        );

      } catch (e) {
        print('GetWrap Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..wrap.replace(null)
        );

      }
    }

    if(event is AddWrap){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
        );

        final data = await _iRepository.addToCart(
            wrapId: event.wrapId ,
            wrapColorId: event.wrapColorId
        ,wrapSizeId: event.wrapSizeId
        );

        print('add cart Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
            ..successAddToCart=true
        );

      } catch (e) {
        print('add cart Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
        );

      }
    }
    if(event is Clear){
      try {
        yield state.rebuild((b) => b
          ..successAddToCart = false

        );


      } catch (e) {


      }
    }
    if (event is RemoveItemWrap) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false);

        final data = await _iRepository.removeCartItem(cartItemId: event.id);

        print('remove Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
       );
      } catch (e) {
        print('remove Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false);
      }
    }
    if (event is AddToCartWrap) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false);

        final data = await _iRepository.addToCart(
            giftId: event.giftId,
            giftColorId: event.giftColorId,
            wrapId: event.wrapId,
            wrapColorId: event.wrapColorId);

        print('add cart Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..successAddToCart = true);
      } catch (e) {
        print('add cart Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..successAddToCart = false);
      }
    }
  }
}