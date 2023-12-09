part of 'approment_cubit.dart';

@immutable
sealed class AppromentState {}

final class AppromentInitial extends AppromentState {}
final class AppromentSucsess extends AppromentState {}
final class AppromentFailure extends AppromentState {}
final class AppromentAdded extends AppromentState {}



