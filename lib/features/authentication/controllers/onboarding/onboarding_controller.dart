import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //! variables
  final pageController = PageController();
  final currentIndex = 0.obs;
  //Update current index when page scroll
  void updatePageIndex(index) {
    currentIndex.value = index;
  }

  // update dots navigation click
  void handleDotclicks(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  // jump to the next page
  void nextPage() {
    if (currentIndex.value == 2) {
      // Get.to();
    } else {
      var page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //jump to the last page
  void skipPage() {
    var page = currentIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
