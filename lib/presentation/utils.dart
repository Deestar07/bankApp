
import 'package:flutter/cupertino.dart';

class Utils {

  static screenDimension(BuildContext context, String type){
    return type == 'width' ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.height;
  }

  static vSpace(){
    return const SizedBox(height: 10);
  }
  static hSpace(){
    return const SizedBox(width: 10);
  }

}