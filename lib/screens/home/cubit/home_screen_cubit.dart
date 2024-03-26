import 'package:bloc/bloc.dart';
import 'package:ewaa_newz_app/data/models/get_news_model.dart';
import 'package:ewaa_newz_app/data/repositories/get_news_repo.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenInitial());

  Future<void> getUpdates() async {
    emit(HomeScreenLoading());

    GetNewsModel? myNews = await GetNewsRepo().getNews();

    if (myNews != null) {
      emit(HomeScreenSuccess(myNews));
    } else {
      emit(HomeScreenError());
    }
  }
}
