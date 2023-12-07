part of 'sign_in_cubit.dart';

@immutable
sealed class SignInState {}

final class SignInInitial extends SignInState {}

final class SignInLoading extends SignInState {}

final class SignInSucsess extends SignInState {}

final class SignInNotExisting extends SignInState {}

final class SignInFailuer extends SignInState {}
