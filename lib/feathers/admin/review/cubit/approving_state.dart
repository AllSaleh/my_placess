part of 'approving_cubit.dart';

@immutable
sealed class ApprovingState {}

final class ApprovingInitial extends ApprovingState {}

final class ApprovingLoading extends ApprovingState {}
final class ApprovingSucess extends ApprovingState {}
final class ApprovingFailure extends ApprovingState {}







