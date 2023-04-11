import 'package:bank_app/data/locator.dart';
import 'package:bank_app/data/progressBarManager/busy_dialog.dart';
import 'package:bank_app/data/progressBarManager/dialog_models.dart';
import 'package:bank_app/data/progressBarManager/dialog_service.dart';
import 'package:bank_app/presentation/values/colors.dart';
import 'package:flutter/material.dart';
// import 'package:valuejet/utils/busy_dialog.dart';
// import 'package:valuejet/utils/colors.dart';
// import 'package:valuejet/utils/locator.dart';
// import 'package:valuejet/utils/progressBarManager/dialog_models.dart';
// import 'package:valuejet/utils/progressBarManager/dialog_service.dart';


class ProgressManager extends StatefulWidget {
  final Widget child;
   const ProgressManager( {required this.child});

  _ProgressManagerState createState() => _ProgressManagerState();
}

class _ProgressManagerState extends State<ProgressManager> {
  final ProgressService _progressService = locator<ProgressService>();

  @override
  void initState() {
    super.initState();
    _progressService.registerProgressListener(_showDialog);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

   void _showDialog(ProgressRequest request) async{
    ArsProgressDialog progressDialog = ArsProgressDialog(
        context,
        blur: 4,
        dismissable: false,
        animationDuration: const Duration(milliseconds: 500),
        loadingWidget: Material(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            height: 80,
            width: 80,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: CircularProgressIndicator(
                      strokeWidth: 2, color: ColorClass().primaryColor
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );

    progressDialog.show(); // show dialog

    //progressDialog.dismiss();
    print('show');

  }

}
