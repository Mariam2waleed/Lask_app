part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class GetNewsLoading extends HomeState {}

final class GetNewsSuccess extends HomeState {}

final class GetNewsError extends HomeState {}
