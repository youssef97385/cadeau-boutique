import 'package:cadeaue_boutique/data/repository/irepository.dart';
import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/my_card_tabs/bloc/tabs_card_state.dart';
import 'package:cadeaue_boutique/Ui/my_card_tabs/bloc/tabs_card_event.dart';



class TabsCardBloc extends Bloc<TabsCardEvent,TabsCardState>{

  IRepository _iRepository;

  TabsCardBloc(this._iRepository):super(TabsCardState.initail());

  @override
  TabsCardState get initialState => TabsCardState.initail();



  @override
  Stream<TabsCardState> mapEventToState(
      TabsCardEvent event,
      ) async* {

    if(event is GetSentEvent){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..sentCard.replace([])
          ..revivedCard.replace([])

        );

        final data = await _iRepository.getMyCard();

        print('Success data ${data}');

        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..sentCard.replace(data.sentCard)
          ..revivedCard.replace(data.revicedCard)
        );

      } catch (e) {
        print('GetPRoduct Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..sentCard.replace([])
          ..revivedCard.replace([])
        );

      }
    }


  }


}


