import 'package:amina_enterprises/app/modules/home/views/home_view.dart';
import 'package:amina_enterprises/app/modules/home/views/profile_view.dart';
import 'package:amina_enterprises/app/modules/home/views/search_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DashboardController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxList<Widget> widgetOptions =
      <Widget>[const HomeView(), const SearchView(), const ProfileView()].obs;
}
