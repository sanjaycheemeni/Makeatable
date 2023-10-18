import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:makeatable/model/Top5Resto.dart';
// import 'package:makeatable/model/homepage.dart';
import 'package:makeatable/services/HomePageService.dart';

import '../model/Top5Food.dart';

class HomePageController extends GetxController {
  var top5Resto = <Resto>[].obs;
  var top5Food = <Food>[].obs;
  RxString userName = "sanju".obs;

  @override
  void onInit() {
    // fetchTopResto();
    fetchTopFood();
    super.onInit();
  }

  Future<void> fetchTopResto() async {
    var list = await HomepageService().fetchTop5Resto();
    if (list == null) {
      fetchTopResto();
    }
    top5Resto(list);
  }

  Future<void> fetchTopFood() async {
    var list = await HomepageService().fetchTop5Food();
    print("test" + list.toString());
    if (list == null) {
      fetchTopFood();
    }
    top5Food(list);
  }
}
