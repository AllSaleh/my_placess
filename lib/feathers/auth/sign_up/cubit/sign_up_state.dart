part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpNotEqualPass extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpFailuer extends SignUpState {}

final class SignUpExiting extends SignUpState {}

final class SignUpSucsess extends SignUpState {}
