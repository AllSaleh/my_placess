part of 'accept_approving_cubit.dart';

@immutable
sealed class AcceptApprovingState {}

final class AcceptApprovingInitial extends AcceptApprovingState {}
final class AcceptApprovingLoading extends AcceptApprovingState {}
final class AcceptApprovingSucess extends AcceptApprovingState {}
final class AcceptApprovingFailure extends AcceptApprovingState {}
final class AcceptApprovingLoading2 extends AcceptApprovingState {}
final class AcceptApprovingSucess2 extends AcceptApprovingState {}




