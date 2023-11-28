import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:makeatable/model/Auth.dart';
import 'package:makeatable/services/AuthServices.dart';
import 'package:makeatable/view/SearchResult/Pages/screen_search_result_main.dart';
import 'package:makeatable/view/auth_module/widgets/snackbar.dart';
import 'package:makeatable/view/homepage_module/pages/screen_home.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  Future logIn(BuildContext context) async {
    change();

    if (!(usernameController.text == '' || passwordController.text == '')) {
      var status = await AuthService().auhenticate(new Auth(
          email: usernameController.text, password: passwordController.text));
      if (status == true) {
        snackSuccess(context: context);
        Get.to(HomeScreen(
          isLogged: true,
        ));
        return true;
      } else {
        snackWrongPass(context: context);
        change();
        return;
      }
    } else {
      snackEmptyFields(context: context);
      change();
      return false;
    }
  }

  void change() {
    // toggle
    isLoading.value = !isLoading.value;
  }
}
