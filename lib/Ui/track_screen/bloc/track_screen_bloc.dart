import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/track_screen/bloc/track_screen_event.dart';
import 'package:cadeaue_boutique/Ui/track_screen/bloc/track_screen_state.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';



class TrackScreenBloc extends Bloc<TrackScreenEvent,TrackScreenState>{
  IRepository _iRepository;

  TrackScreenBloc(this._iRepository):super(TrackScreenState.initail());
  @override
  TrackScreenState get initialState => TrackScreenState.initail();

  @override
  Stream<TrackScreenState> mapEventToState(
      TrackScreenEvent event,
      ) async* {

    if(event is GetTracks){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..tracks.replace([])

        );

        final data = await _iRepository.getTracksHome();

        print('get products Success data ${data}');

        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..tracks.replace(data)
        );

      } catch (e) {
        print('GetPRoduct Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..tracks.replace([])
        );

      }
    }


  }

}