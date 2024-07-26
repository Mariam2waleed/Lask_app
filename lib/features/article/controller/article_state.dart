part of 'article_cubit.dart';

@immutable
sealed class ArticleState {}

final class ArticleInitial extends ArticleState {}

final class ArticleLoading extends ArticleState {}

final class ArticleSuccess extends ArticleState {}

final class ArticleError extends ArticleState {}

final class ArticleClapped extends ArticleState {}

final class ArticleBookmarked extends ArticleState {}

final class ArticleShared extends ArticleState {}