library filter_event;

import 'package:built_value/built_value.dart';

part 'filter_event.g.dart';

abstract class FilterEvent{}

abstract class GetOccasions extends FilterEvent
implements Built<GetOccasions, GetOccasionsBuilder> {

  //fields go here

  GetOccasions._();

  factory GetOccasions([updates(GetOccasionsBuilder b)]) = _$GetOccasions;
}

abstract class GetRelations extends FilterEvent
    implements Built<GetRelations, GetRelationsBuilder> {

  //fields go here

  GetRelations._();

  factory GetRelations([updates(GetRelationsBuilder b)]) = _$GetRelations;
}