import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';
import 'edit_event.dart';
import 'edit_state.dart';

class EditBloc extends Bloc<EditEvent, EditState> {
  IRepository _iRepository;
  EditBloc(this._iRepository) : super(EditState.initail());

  @override
  EditState get initialState => EditState.initail();

  @override
  Stream<EditState> mapEventToState(
    EditEvent event,
  ) async* {
    if(event is GetProduct){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..product = null
        );

        final data = await _iRepository.getProductByid(id: event.id);

        print('get product Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..product.replace(data)
        );

      } catch (e) {
        print('GetPRoduct Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..product.replace(null)
        );

      }
    }


    if(event is RemoveFavourite){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
        );

        final data = await _iRepository.removeFavourite(id: event.id);

        print('remove Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..removed = true
          ..product.isFavourite = false
        );

      } catch (e) {
        print('remobve Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
        );

      }
    }
    if(event is AddToFavourite){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
        );

        final data = await _iRepository.addToFavourite(id: event.id);

        print('add Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..removed = false
          ..product.isFavourite = true
        );

      } catch (e) {
        print('add Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
        );

      }
    }


    if(event is AddToCart){
      print("cart body4${event.giftSizeId}");
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
        );

        final data = await _iRepository.addToCart(
            giftId: event.giftId ,
            giftColorId: event.giftColorId ,
            wrapId: event.wrapId ,
            wrapColorId: event.wrapColorId,
            giftSizeId: event.giftSizeId,
            wrapSizeId: event.wrapSizeId);

        print('add cart Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..successAddToCart = true
            ..successRemoved=true
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
    if(event is GetWrapByGift){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..wraps.replace([])

        );

        // final data = await _iRepository.getWrapsBygiftId(giftId: event.giftId);
        final data = await _iRepository.getWraps(isGlobalWrap: false);

        print('get wraps Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..wraps.replace(data)
        );

      } catch (e) {
        print('GetWraps Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..wraps.replace([])
        );

      }
    }

    if(event is ClearSuccess){
      try {
        yield state.rebuild((b) => b
          ..successAddToCart = false

        );


      } catch (e) {




      }
    }

    if (event is RemoveItem) {
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
  }
}