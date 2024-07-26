// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:lask_app/main.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List homeData = [];
  List justForYouData = [];
  bool seeMore = false;

  // See More Function
  void seeMoreFun() {
    seeMore = !seeMore;
    emit(HomeInitial());
  }

  // Get Home Data ( Main News )
  void getHomeData() async {
    emit(GetNewsLoading());
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=a3ca73c2ecdc449e8bf5e42e40200e47');
      if (response.statusCode == 200) {
        homeData = response.data['articles'];
        emit(GetNewsSuccess());
      } else {
        print('Error: ${response.statusCode}');
        print('Error details: ${response.data}');
        emit(GetNewsError());
      }
    } catch (e) {
      print('Error: $e');
      print('Error details: $e');
      emit(GetNewsError());
    }
  }

  // Get Just For You Data
  void getJustForYouData() async {
    emit(GetNewsLoading());
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/everything?q=tesla&from=2024-06-26&sortBy=publishedAt&apiKey=a3ca73c2ecdc449e8bf5e42e40200e47');
      if (response.statusCode == 200) {
        justForYouData = response.data['articles'];
        emit(GetNewsSuccess());
      } else {
        print('Error: ${response.statusCode}');
        print('Error details: ${response.data}');
        emit(GetNewsError());
      }
    } catch (e) {
      print('Error: $e');
      print('Error details: $e');
      emit(GetNewsError());
    }
  }
}
