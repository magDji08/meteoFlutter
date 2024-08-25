import 'package:get/get.dart';
import 'package:meteo/about_me.dart';

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;

    if (index == 0) {
      // Logique pour Home
      print("Home tapped");
    } else if (index == 1) {
      Get.to(AboutMe(),
          transition: Transition.circularReveal,
          duration: const Duration(seconds: 3));
      // Logique pour Profile
      print("Profile tapped");
    }
  }
}
