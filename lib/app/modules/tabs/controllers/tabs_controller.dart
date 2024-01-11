import 'package:get/get.dart';

class TabsController extends GetxController {
  final RxInt _selectedTabIndex = 0.obs;
  RxInt get selectedTabIndex => _selectedTabIndex;
  void selectIndex(int index) {
    _selectedTabIndex.value = index;
  }

  final RxString _selectedTabTitle = 'Categories'.obs;
  RxString get selectedTabTitle => _selectedTabTitle;
  void selectTabTitle() {
    if (_selectedTabIndex.value == 0) {
      _selectedTabTitle.value = 'Categories';
    }
    if (_selectedTabIndex.value == 1) {
      _selectedTabTitle.value = 'Favorites';
    }
  }
}
