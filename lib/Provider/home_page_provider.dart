import 'package:flutter/cupertino.dart';

class HomePageProvider with ChangeNotifier {
  bool? isEligible;
  String? eligibilityMessege = "";

  void checkEligibility(int age) {
    if (age >= 18) {
      isEligible = true;
      eligibilityMessege = "Yess!!! You are Eligible";
      notifyListeners();
    } else {
      isEligible = false;
      eligibilityMessege = "No :(  You are NOT Eligible";
      notifyListeners();
    }
  }
}
