library favourite_event;

import 'package:built_value/built_value.dart';

part 'favourite_event.g.dart';

abstract class FavouriteEvent{}
abstract class GetFavourites extends FavouriteEvent
implements Built<GetFavourites, GetFavouritesBuilder> {

  //fields go here

  GetFavourites._();

  factory GetFavourites([updates(GetFavouritesBuilder b)]) = _$GetFavourites;
}

abstract class RemoveFavourite extends FavouriteEvent
    implements Built<RemoveFavourite, RemoveFavouriteBuilder> {

  //fields go here

  int get id;

  RemoveFavourite._();

  factory RemoveFavourite([updates(RemoveFavouriteBuilder b)]) = _$RemoveFavourite;
}

abstract class AddToCart extends FavouriteEvent
    implements Built<AddToCart, AddToCartBuilder> {

  //fields go here


  int get giftId;

  @nullable
  int get giftColorId;

  @nullable
  int get wrapId;

  @nullable
  int get wrapColorId;

  AddToCart._();

  factory AddToCart([updates(AddToCartBuilder b)]) = _$AddToCart;
}