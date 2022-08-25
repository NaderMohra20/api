import 'package:e_commerc_api/Airprogecrs/airlien_helper.dart';
import 'package:e_commerc_api/models/passenger_model.dart';
import 'package:flutter/cupertino.dart';

class AillinesProvider extends ChangeNotifier {
  AillinesProvider() {
    getPassengers();
  }
  List<Passenger> passengers = [];
  int page = 0;
  bool isloading = false;
  getNewPassenger() {
    page++;
    getPassengers();
  }

  getPassengers() async {
    isloading == true;
    notifyListeners();
    PassengerRespons passengerRespons =
        await AillinesDioHelper.aillinesDioHelper.getPassenger(page);
    passengers.addAll(passengerRespons.data ?? []);
    isloading == false;
    notifyListeners();
  }
}
