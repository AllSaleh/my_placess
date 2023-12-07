part of 'rest_password_cubit.dart';

@immutable
sealed class RestPasswordState {}

final class RestPasswordInitial extends RestPasswordState {}

final class RestPasswordNotEqual extends RestPasswordState {}

final class RestPasswordLoading extends RestPasswordState {}

final class RestPasswordSucsess extends RestPasswordState {}

final class RestPasswordFaildOtp extends RestPasswordState {}

final class RestPasswordFailure extends RestPasswordState {}
