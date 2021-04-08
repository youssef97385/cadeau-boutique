import 'package:bloc/bloc.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_event.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_state.dart';
import 'package:cadeaue_boutique/Ui/home/page/home.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  IRepository _iRepository;


  HomeBloc(this._iRepository) : super(HomeState.initail());


  int currentPage = 1;
  int totalPage = 0;

  @override
  HomeState get initialState => HomeState.initail();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if(event is GetSlider){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
            ..sliders.replace([])
        );

        final data = await _iRepository.getSlider();

        print('get slider Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
            ..sliders.replace(data)
        );

      } catch (e) {
        print('GetSlider Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
            ..sliders.replace([])
        );

      }
    }

    if (event is GetOccasion) {
      currentPage =1;

      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..occasions.replace([]));

        final data = await _iRepository.getOccasions(page: currentPage);

        totalPage = data.page;

        print('getOccasion Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..occasions.replace(data.data));
      } catch (e) {
        print('getoccasion Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..occasions.replace([]));
      }
    }

    if (event is GetCategory) {
      currentPage =1;

      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..categories.replace([]));

        final data = await _iRepository.getCategory(page: currentPage);

        totalPage = data.page;

        print('getCategories Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..categories.replace(data.data));
      } catch (e) {
        print('getCategory Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..categories.replace([]));
      }
    }

    if (event is GetBrand) {
      currentPage =1;

      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..brands.replace([]));

        final data = await _iRepository.getBrands(page: currentPage);

        totalPage = data.page;

        print('getBrands Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..brands.replace(data.data));
      } catch (e) {
        print('getBrands Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..brands.replace([]));
      }
    }

    if (event is GetCoupon) {
      currentPage =1;

      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..coupons.replace([]));

        final data = await _iRepository.getCoupon(page: currentPage);

        totalPage = data.page;

        print('getcoupons Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..coupons.replace(data.data));
      } catch (e) {
        print('getcoupons Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..coupons.replace([]));
      }
    }

    if(event is GetWraps){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..wraps.replace([])
        );

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

    if(event is GetNearby){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..nearbyOccasions.replace([])
        );

        final data = await _iRepository.getNearOccasions();

        print('get nearby Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..nearbyOccasions.replace(data)
        );

      } catch (e) {
        print('getnearby Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..nearbyOccasions.replace([])
        );

      }
    }

    if(event is GetAllProducts){
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..products.replace([])
        );

        final data = await _iRepository.getAllProducts();

        print('get all products Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..products.replace(data)
        );

      } catch (e) {
        print('all products Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..products.replace([])
        );

      }
    }
    if (event is IniEvent) {
      final result = await _iRepository.getIsLogin();
      yield state.rebuild((b) => b..loginState = result);
    }
  }



}