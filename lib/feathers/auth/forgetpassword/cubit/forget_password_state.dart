part of 'forget_password_cubit.dart';

@immutable
sealed class ForgetPasswordState {}

final class ForgetPasswordInitial extends ForgetPasswordState {}

final class ForgetPasswordLoading extends ForgetPasswordState {}

final class ForgetPasswordSucsess extends ForgetPasswordState {}

final class ForgetPasswordNoAccount extends ForgetPasswordState {}

final class ForgetPasswordFialdOtp extends ForgetPasswordState {}

final class ForgetPasswordFailure extends ForgetPasswordState {}
