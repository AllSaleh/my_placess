part of 'categoriess_cubit.dart';

@immutable
sealed class CategoriessState {}

final class CategoriessInitial extends CategoriessState {}
final class CategoriessLoading extends CategoriessState {}
final class CategoriessSucsess extends CategoriessState {}
final class CategoriessFailure extends CategoriessState {}
final class CategoriessNodata extends CategoriessState {}




