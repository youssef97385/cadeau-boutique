import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_event.dart';
import 'package:cadeaue_boutique/Ui/picker_screen/bloc/filter_event.dart';
import 'package:cadeaue_boutique/Ui/picker_screen/bloc/filter_state.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  IRepository _iRepository;

  FilterBloc(this._iRepository) : super(FilterState.initail());

  @override
  FilterState get initialState => FilterState.initail();

  @override
  Stream<FilterState> mapEventToState(
    FilterEvent event,
  ) async* {
    if (event is GetOccasion) {
      print("picker3");
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..occasions.replace([]));

        print("picker4");
        final data = await _iRepository.getOccasions(page: 1);

        print('getOccasion Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..occasions.replace(data.data));
      } catch (e) {
        print("picker5");
        print('getoccasion Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..occasions.replace([]));
      }
    }

    if (event is GetRelations) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..relations.replace([]));

        final data = await _iRepository.getRelations();

        print('getRelations Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..relations.replace(data));
      } catch (e) {
        print('getRelations Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..relations.replace([]));
      }
    }
  }
}
