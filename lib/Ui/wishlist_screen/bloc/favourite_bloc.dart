import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/wishlist_screen/bloc/favourite_event.dart';
import 'package:cadeaue_boutique/Ui/wishlist_screen/bloc/favourite_state.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  IRepository _iRepository;
  FavouriteBloc(this._iRepository) : super(FavouriteState.initail());

  @override
  FavouriteState get initialState => FavouriteState.initail();

  @override
  Stream<FavouriteState> mapEventToState(
    FavouriteEvent event,
  ) async* {
    if(event is GetFavourites){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..products.replace([])
        );

        final data = await _iRepository.getFavourites();

        print('get favourites Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..products.replace(data)
        );

      } catch (e) {
        print('favourites Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..products.replace([])
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
            ..products.replace(data)
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
    if(event is AddToCart){
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
            wrapColorId: event.wrapColorId);

        print('add cart Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
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
  }
}