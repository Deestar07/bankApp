

import 'package:bank_app/data/http/paths.dart';
import 'package:bank_app/data/model/general/error_model.dart';
import 'package:bank_app/data/model/general/success_model.dart';
import 'package:bank_app/data/services/index.dart';

class AuthService {

  login(Map<dynamic, dynamic> payload) async {
    try {
      final result = await http.post(Paths.login, payload);
      if (result is ErrorModel) {
        var data = result.error;
        return ErrorModel(data);
      }
      var data = result.data;
      // BookingStartModel response = BookingStartModel.fromJson(data);
      // return SuccessModel(response);
      return SuccessModel(true);
    } catch (e) {
      print(e.toString());
      return ErrorModel('$e');
    }
  }

  signUp(Map<dynamic, dynamic> payload) async {
    try {
      final result = await http.post(Paths.login, payload);
      if (result is ErrorModel) {
        var data = result.error;
        return ErrorModel(data);
      }
      var data = result.data;
      // BookingStartModel response = BookingStartModel.fromJson(data);
      return SuccessModel(true);
    } catch (e) {
      print(e.toString());
      return ErrorModel('$e');
    }
  }

  // getFlightInfo() async {
  //   try {
  //     final result = await http.get(Paths.flightDailySearch);
  //     if (result is ErrorModel) {
  //       var data = result.error;
  //       List<SearchFlightPayLoad> currencies = List<SearchFlightPayLoad>.from(
  //           data.map((item) => SearchFlightPayLoad.fromJson(item)
  //           ));
  //       return ErrorModel(currencies);
  //     }
  //     var data = result.data['data'];
  //     List<SearchFlightPayLoad> payload = List<SearchFlightPayLoad>.from(
  //         data.map((item) => SearchFlightPayLoad.fromJson(item)
  //         ));
  //     return payload;
  //   } catch (e) {
  //     print(e.toString());
  //     return ErrorModel('$e');
  //   }
  // }

  // getFlightAncillary() async {
  //   try {
  //     final result = await http.post(Paths.flightAncillaries, {});
  //     if (result is ErrorModel) {
  //       var data = result.error;
  //       return ErrorModel(data);
  //     }
  //     var data = result.data;
  //     AncillaryModel ancillaryModel = AncillaryModel.fromJson(data);
  //     return SuccessModel(ancillaryModel);
  //   } catch (e) {
  //     print(e.toString());
  //     return ErrorModel('$e');
  //   }
  // }
  //

}
