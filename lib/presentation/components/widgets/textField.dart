import 'package:bank_app/presentation/values/colors.dart';
import 'package:flutter/material.dart';

class EntryField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final bool showSuffixIcon;
  final TextInputType textInputType;
  final Function(String value) onTextChanged;
  final bool? isObscureText;
  final bool shouldDisable;

  const EntryField(
      {Key? key, this.labelText = '',
      this.hintText = '',
      this.textInputType = TextInputType.text,
      this.showSuffixIcon = false,
      required this.onTextChanged,
      this.isObscureText = false,
        this.shouldDisable = false
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          labelText!,
          textAlign: TextAlign.start,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.black, fontSize: 13.5),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.grey),
          obscureText: isObscureText == true ? true : false,
          onChanged: (String? value) {
            // onTextChanged.call(value?.orEmpty());
          },
          enabled: !shouldDisable,
          keyboardType: textInputType,
          decoration: InputDecoration(
            isDense: true,
            suffixIcon: showSuffixIcon
                ? const Icon(Icons.arrow_drop_down_outlined, color: Colors.grey)
                : null,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[300]!)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[300]!)),
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 13.5, color: const Color(0xffb3b3b3)),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}



class EntryFieldR extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final bool showSuffixIcon;


  const EntryFieldR(this.labelText, this.hintText, this.showSuffixIcon, {Key? key}) : super(key: key);

  @override
  State<EntryFieldR> createState() => _EntryFieldRState();
}

class _EntryFieldRState extends State<EntryFieldR> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.labelText!,
          textAlign: TextAlign.start,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.grey, fontSize: 13.5),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.grey, fontSize: 13.5),
          decoration: InputDecoration(
            isDense: true,
            suffixIcon: widget.showSuffixIcon
                ? Icon(
              Icons.verified_user,
              color: ColorClass().primaryColor,
              size: 17,
            )
                : null,
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[200]!)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[200]!)),
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 13.5),
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}

