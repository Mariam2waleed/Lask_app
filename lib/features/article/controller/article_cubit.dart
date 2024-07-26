import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'article_state.dart';

class ArticleCubit extends Cubit<ArticleState> {
  ArticleCubit() : super(ArticleInitial());

   List homeData = [];
}
