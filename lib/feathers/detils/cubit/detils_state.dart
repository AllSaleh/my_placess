part of 'detils_cubit.dart';

@immutable
sealed class DetilsState {}

final class DetilsInitial extends DetilsState {}
final class DetilsSucsess extends DetilsState {}
final class DetilsFalure extends DetilsState {}
final class DetilsLoading extends DetilsState {}





