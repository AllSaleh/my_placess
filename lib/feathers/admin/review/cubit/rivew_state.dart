part of 'rivew_cubit.dart';

@immutable
sealed class RivewState {}

final class RivewInitial extends RivewState {}
final class RivewLoading extends RivewState {}
final class RivewNoData extends RivewState {}

final class RivewSucsess extends RivewState {}
final class RivewFailure extends RivewState {}


