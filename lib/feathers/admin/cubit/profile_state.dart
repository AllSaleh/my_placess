part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}
final class ProfileLoading extends ProfileState {}
final class ProfileSucsess extends ProfileState {}
final class ProfileIFailure extends ProfileState {}
final class ProfileINoAccount extends ProfileState {}




