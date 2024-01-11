import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabsController extends GetxController with GetTickerProviderStateMixin {
  final _tabIndex = 0.obs;

  late TabController tabController;

  String get selectedTabTitle =>
      _tabIndex.value == 0 ? 'Categories' : 'Favorites';

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() => _tabIndex.value = tabController.index);
  }
}
