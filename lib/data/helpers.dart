import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bank_app/presentation/values/colors.dart';
import 'package:flutter/material.dart';


showErrorToast(String message, BuildContext context) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.ERROR,
    animType: AnimType.RIGHSLIDE,
    btnOkColor: ColorClass().primaryColor,
    descTextStyle: TextStyle(color: ColorClass().primaryColor),
    desc: message
  ).show();
}

showSuccessDialog(String message,Function onclickAction, BuildContext context) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.SUCCES,
    animType: AnimType.RIGHSLIDE,
    btnOkColor: ColorClass().primaryColor,
    btnOkText: 'OK',
    descTextStyle: TextStyle(color: ColorClass().primaryColor),
    title: 'Success!',
    desc: message,
    btnOkOnPress: () {
     onclickAction();
    },
  ).show();
}

String capitalize(val) {
  return "${val[0].toUpperCase()}${val.substring(1)}";
}

