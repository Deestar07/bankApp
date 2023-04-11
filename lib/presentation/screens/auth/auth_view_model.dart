import 'package:bank_app/data/base_model.dart';
import 'package:bank_app/data/helpers.dart';
import 'package:bank_app/data/locator.dart';
import 'package:bank_app/data/model/auth/payload/login_payload.dart';
import 'package:bank_app/data/model/auth/payload/signup_payload.dart';
import 'package:bank_app/data/model/general/error_model.dart';
import 'package:bank_app/data/model/general/success_model.dart';
import 'package:bank_app/data/services/auth_service.dart';
import 'package:bank_app/presentation/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:valuejet/data/configs.dart';
// import 'package:valuejet/data/model/check_in/payload/check_in_payload.dart';
// import 'package:valuejet/data/model/check_in/payload/check_in_search_payload.dart';
// import 'package:valuejet/data/model/check_in/response/check_in_model.dart';
// import 'package:valuejet/data/model/check_in/response/checking_search.dart';
// import 'package:valuejet/data/model/general/error_model.dart';
// import 'package:valuejet/data/model/general/success_model.dart';
// import 'package:valuejet/data/services/checkin_service.dart';
// import 'package:valuejet/ui/widget/webview.dart';
// import 'package:valuejet/utils/base_model.dart';
// import 'package:valuejet/utils/helpers.dart';
// import 'package:valuejet/utils/locator.dart';

class AuthViewModel extends BaseModel {

  final AuthService _authService = locator<AuthService>();

  signUp(BuildContext context, SignupPayload payLoad) async {
    // setBusy(true);
    var result = await _authService.signUp(payLoad.toJson());
    if (result is ErrorModel) {
      notifyListeners();
      // setBusy(false);
      showErrorToast('An Error occurred',context);
      return ErrorModel(result.error);
    }
    if (result is SuccessModel) {
      // setBusy(false);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen()));
    }
  }

  login(BuildContext context, LoginPayload payLoad) async {
     // setBusy(true);
    var result = await _authService.login(payLoad.toJson());
    if (result is ErrorModel) {
      notifyListeners();
      // setBusy(false);
      showErrorToast('An Error occurred',context);
      return ErrorModel(result.error);
    }
    if (result is SuccessModel) {
      // setBusy(false);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen()));
    }
  }

}