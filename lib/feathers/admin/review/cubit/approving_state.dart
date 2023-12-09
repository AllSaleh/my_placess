part of 'approving_cubit.dart';

@immutable
sealed class ApprovingState {}

final class ApprovingInitial extends ApprovingState {}

final class ApprovingLoading extends ApprovingState {}
final class ApprovingLoading2 extends ApprovingState {}
final class ApprovingSucess2 extends ApprovingState {}
final class ApprovingSucess3 extends ApprovingState {}

final class ApprovingFailure2 extends ApprovingState {}



final class ApprovingSucess extends ApprovingState {}
final class ApprovingFailure extends ApprovingState {}
final class ApprovingFailure3 extends ApprovingState {}








