import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:makeatable/model/Top5Resto.dart';

class HomePageController extends GetxController {
  var top5Resto = <Top5Resto>[].obs;

  @override
  void onInit() {
    fetchTopResto();
    super.onInit();
  }

  void fetchTopResto() {}
}
