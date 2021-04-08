import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/filter_result/bloc/search_event.dart';
import 'package:cadeaue_boutique/Ui/filter_result/bloc/search_state.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  IRepository _iRepository ;
  SearchBloc(this._iRepository) : super(SearchState.initail());

  @override
  SearchState get initialState => SearchState.initail();

  @override
  Stream<SearchState> mapEventToState(
      SearchEvent event,
      ) async* {
    if(event is GetFilteredProducts){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..products.replace([])

        );


        final data = await _iRepository.filter(relationId:event.relationId , occasionId: event.occasionId ,
        minPrice: event.minPrice , maxPrice: event.maxPrice , gender: event.gender , age: event.age);

        print('filter Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..products.replace(data)
        );

      } catch (e) {
        print('filter Error $e');
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