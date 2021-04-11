import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/cart_screen/bloc/cart_event.dart';
import 'package:cadeaue_boutique/Ui/cart_screen/bloc/cart_state.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartBloc extends Bloc<CartEvent, CartState> {

  IRepository _iRepository;

  CartBloc(this._iRepository) : super(CartState.initail());

  @override
  CartState get initialState => CartState.initail();

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    if(event is GetCartInfo){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..cartList.replace([])

        );

        final data = await _iRepository.getCartInfo();

        print('get cart Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..cartList.replace(data.details)
          ..cart.replace(data)
        );

      } catch (e) {
        print('GetCart Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..cartList.replace([])
        );

      }
    }

    if(event is AddSong){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false


        );


        final data = await _iRepository.addSong(song: event.song);

        print('add song Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..cartList.replace(data.details)
            ..cart.replace(data)
        );


      } catch (e) {
        print('add song Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false

        );

      }
    }


    if(event is RemoveItem){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false

        );

        final data = await _iRepository.removeCartItem(cartItemId: event.id);

        print('remove Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..cartList.replace(data.details)
            ..cart.replace(data)

        );

      } catch (e) {
        print('remove Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false

        );

      }
    }
if(event is GetGlobalWraps){
  try {
    yield state.rebuild((b) => b
      ..isLoading = true
      ..error = ""
      ..success = false
      ..wraps.replace([])
    );

    final data = await _iRepository.getWraps(isGlobalWrap: true);

    print('get global wraps Success data ${data}');
    yield state.rebuild((b) => b
      ..isLoading = false
      ..error = ""
      ..success = true
      ..wraps.replace(data)
    );

  } catch (e) {
    print('GetGlobalWraps Error $e');
    yield state.rebuild((b) => b
      ..isLoading = false
      ..error = "Something went wrong"
      ..success = false
      ..wraps.replace([])
    );

  }
}
    if(event is AddGlobalWrap){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false

        );

        final data = await _iRepository.addGlobalWrap(wrapId: event.wrapId , wrapColor: event.wrapColorId);

        print('add global wraps Success data ${data}');


        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..cartList.replace(data.details)

        );

      } catch (e) {
        print('add global wraps Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false

        );

      }
    }
  }


}