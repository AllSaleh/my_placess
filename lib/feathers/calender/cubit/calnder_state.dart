part of 'calnder_cubit.dart';

@immutable
sealed class CalnderState {}

final class CalnderInitial extends CalnderState {}
final class CalnderChangeDate extends CalnderState {}
final class CalnderSucsess extends CalnderState {}
final class CalnderLoading extends CalnderState {}
final class CalnderFailure extends CalnderState {}
final class CalnderNoCalnder extends CalnderState {}





