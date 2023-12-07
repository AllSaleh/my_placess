part of 'faviorte_cubit.dart';

@immutable
sealed class FaviorteState {}

final class FaviorteInitial extends FaviorteState {}

final class FaviorteLoading extends FaviorteState {}

final class FaviorteSucsess extends FaviorteState {}

final class FaviorteNodata extends FaviorteState {}

final class FaviorteFailure extends FaviorteState {}
