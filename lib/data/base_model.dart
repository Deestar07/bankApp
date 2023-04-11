import 'package:bank_app/data/locator.dart';
import 'package:bank_app/data/progressBarManager/dialog_models.dart';
import 'package:bank_app/data/progressBarManager/dialog_service.dart';
import 'package:flutter/widgets.dart';

class BaseModel extends ChangeNotifier {
  final ProgressService _dialogService = locator<ProgressService>();
  late ProgressResponse hh;

  bool _busy = false;
  bool get busy => _busy;

  void setBusy(bool value) {
    _busy = value;
    notifyListeners();
    if(value == true){
      _dialogService.showDialog(description: '', title: '');
    }else
    {
      _dialogService.dialogComplete();
    }
  }

}
