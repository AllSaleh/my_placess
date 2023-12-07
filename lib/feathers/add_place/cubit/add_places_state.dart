part of 'add_places_cubit.dart';

@immutable
sealed class AddPlacesState {}

final class AddPlacesInitial extends AddPlacesState {}

final class AddPlacesLoading extends AddPlacesState {}

final class AddPlacesSucsess extends AddPlacesState {}

final class AddPlacesNotCategori extends AddPlacesState {}

final class AddPlacesNotImage extends AddPlacesState {}

final class AddPlacesFailure extends AddPlacesState {}
