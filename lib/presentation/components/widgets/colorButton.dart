import 'package:bank_app/presentation/values/colors.dart';
import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final String? title;
  final bool? showProgress;
  final Function onclick;
  const ColorButton(this.title, {Key? key, this.showProgress,required this.onclick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onclick();
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: ColorClass().primaryColor),
        child: Center(
            child: showProgress == true
                ? const CircularProgressIndicator()
                 : Text(
          title!.toUpperCase(),
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 15,
              letterSpacing: 3,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
