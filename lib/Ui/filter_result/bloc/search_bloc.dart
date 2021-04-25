import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/filter_result/bloc/search_event.dart';
import 'package:cadeaue_boutique/Ui/filter_result/bloc/search_state.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  IRepository _iRepository;

  SearchBloc(this._iRepository) : super(SearchState.initail());

  @override
  SearchState get initialState => SearchState.initail();

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    if (event is GetFilteredProducts) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..products.replace([]));

        var data;

        data = await _iRepository.filter(
            relationId: event.relationId,
            occasionId: event.occasionId,
            minPrice: event.minPrice,
            maxPrice: event.maxPrice,
            gender: event.gender,
            age: event.age);

        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..products.replace(data));
      } catch (e) {
        print('filter Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..products.replace([]));
      }
    }

    if (event is AddChoice) {
      try {
        yield state.rebuild((b) => b..choices.add(event.filterItem));
      } catch (e) {}
    }

    if (event is DeleteChoice) {
      try {
            yield state.rebuild((b) => b
              ..isLoading = true
              ..error = ""
              ..success = false
             );
        yield state.rebuild((b) => b..choices.remove(event.filterItem));


       final data = await _iRepository.filter(
            relationId:
            state.choices.indexWhere((item) => item.key == 'relation') == -1
                ? null
                : state
                .choices[state.choices
                .indexWhere((item) => item.key == 'relation')]
                .id,
            occasionId:
            state.choices.indexWhere((item) => item.key == 'occasion') == -1
                ? null
                : state
                .choices[state.choices
                .indexWhere((item) => item.key == 'occasion')]
                .id,
            minPrice: state.choices.indexWhere((item) => item.key == 'minPrice') == -1
                ? null
                : state
                .choices[state.choices
                .indexWhere((item) => item.key == 'minPrice')]
                .value,
            maxPrice: state.choices.indexWhere((item) => item.key == 'maxPrice') == -1 ? null : state.choices[state.choices.indexWhere((item) => item.key == 'maxPrice')].value,
            gender: state.choices.indexWhere((item) => item.key == 'gender') == -1 ? null : state.choices[state.choices.indexWhere((item) => item.key == 'gender')].value,
            age: state.choices.indexWhere((item) => item.key == 'age') == -1 ? null : state.choices[state.choices.indexWhere((item) => item.key == 'age')].value);
        print("delete8");

        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..products.replace(data));
      } catch (e) {
        print("error$e");
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..products.replace([]));
      }
    }

    // if (event is ReGetItems) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //       ..products.replace([]));
    //
    //     print("delete6" + event.choices.toString());
    //
    //     var data;
    //
    //     // print("delete77"+event.choices[
    //     // event.choices.indexWhere((item) => item.key == 'relation')]
    //     //     .id.toString());
    //     // // print("delet88"+state.choices[
    //     // // state.choices.indexWhere((item) => item.key == 'occasion')]
    //     // //     .id.toString());
    //     // print("delet99"+event.choices[
    //     // event.choices.indexWhere((item) => item.key == 'maxPrice')]
    //     //     .value.toString());
    //     // print("delete66"+event.choices[
    //     // event.choices.indexWhere((item) => item.key == 'minPrice')]
    //     //     .value.toString());
    //     // print("delete55"+event.choices[
    //     // event.choices.indexWhere((item) => item.key == 'age')]
    //     //     .value.toString());
    //     // print("delete44"+event.choices[
    //     // event.choices.indexWhere((item) => item.key == 'gender')]
    //     //     .value.toString());
    //
    //     data = await _iRepository.filter(
    //         relationId:
    //             event.choices.indexWhere((item) => item.key == 'relation') == -1
    //                 ? null
    //                 : event
    //                     .choices[event.choices
    //                         .indexWhere((item) => item.key == 'relation')]
    //                     .id,
    //         occasionId:
    //             event.choices.indexWhere((item) => item.key == 'occasion') == -1
    //                 ? null
    //                 : event
    //                     .choices[event.choices
    //                         .indexWhere((item) => item.key == 'occasion')]
    //                     .id,
    //         minPrice: event.choices.indexWhere((item) => item.key == 'minPrice') == -1
    //             ? null
    //             : event
    //                 .choices[event.choices
    //                     .indexWhere((item) => item.key == 'minPrice')]
    //                 .value,
    //         maxPrice: event.choices.indexWhere((item) => item.key == 'maxPrice') == -1 ? null : event.choices[event.choices.indexWhere((item) => item.key == 'maxPrice')].value,
    //         gender: event.choices.indexWhere((item) => item.key == 'gender') == -1 ? null : event.choices[event.choices.indexWhere((item) => item.key == 'gender')].value,
    //         age: event.choices.indexWhere((item) => item.key == 'age') == -1 ? null : event.choices[event.choices.indexWhere((item) => item.key == 'age')].value);
    //     print("delete8");
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = true
    //       ..products.replace(data));
    //   } catch (e) {
    //     print("delete22$e");
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = "Something went wrong"
    //       ..success = false
    //       ..products.replace([]));
    //   }
    // }
  }
}
