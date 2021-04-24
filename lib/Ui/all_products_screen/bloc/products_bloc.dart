import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/all_products_screen/bloc/products_event.dart';
import 'package:cadeaue_boutique/Ui/all_products_screen/bloc/products_event.dart';
import 'package:cadeaue_boutique/Ui/all_products_screen/bloc/products_state.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  IRepository _iRepository;


  ProductsBloc(this._iRepository) : super(ProductsState.initail());
  @override
  ProductsState get initialState => ProductsState.initail();

  @override
  Stream<ProductsState> mapEventToState(
    ProductsEvent event,
  ) async* {
    if(event is GetProducts){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..products.replace([])

        );

        final data = await _iRepository.getProducts(id: event.id , type:  event.type);

        print('get products Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..products.replace(data)
        );

      } catch (e) {
        print('GetPRoduct Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..products.replace([])
        );

      }
    }


    if(event is GetTopSeller){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..products.replace([])

        );

        final data = await _iRepository.getTopSeller();

        print('get top seller Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..products.replace(data)
        );

      } catch (e) {
        print('GetTOPSELLER Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..products.replace([])
        );

      }
    }



  }
}