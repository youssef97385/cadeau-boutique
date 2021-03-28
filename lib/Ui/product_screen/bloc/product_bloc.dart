import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/product_screen/bloc/product_event.dart';
import 'package:cadeaue_boutique/Ui/product_screen/bloc/product_state.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  IRepository _iRepository;


  ProductBloc(this._iRepository) : super(ProductState.initail());

  @override
  ProductState get initialState => ProductState.initail();

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
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