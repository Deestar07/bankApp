import 'package:bank_app/presentation/components/widgets/colorButton.dart';
import 'package:bank_app/presentation/components/widgets/textField.dart';
import 'package:bank_app/presentation/utils.dart';
import 'package:bank_app/presentation/values/colors.dart';
import 'package:bank_app/presentation/values/strings.dart';
import 'package:flutter/material.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {

  bool isLoginActive = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(child: Container(color: Colors.blueAccent,)),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,bottom: 16,right: 16),
        child: Stack(
          children: [
            _background(),
            Column(
                children: [
                  _appBar(),
                  _layoutTab(),
                ]),
          ],
        ),
      )
      ),
    );
  }


  _background(){
    return Container(
      width: Utils.screenDimension(context, StringClass.width),
      height: Utils.screenDimension(context, StringClass.width),
      color: ColorClass().whiteBackground,
    );
  }
  _appBar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(
            Icons.message,
          ),
          onPressed: () {
            const Drawer(
              backgroundColor: Colors.black,
            );
          },
        ),
        const Text('access',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.doorbell,
          ),
          onPressed: () {},
        )
      ],
    );
  }
  _rememberLayout(){
    return SizedBox(
      width: Utils.screenDimension(context, 'width'),
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          const Text('Remember Me'),
          Utils.hSpace(),
          Checkbox(value: true, onChanged: (value){

          })
        ],),
      ),
    );
  }
  _layoutTab(){
    return Container(
        padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _tabItem('Login',isLoginActive),
                _tabItem('SignUp', !isLoginActive)
              ],
            ),
          ),
          Utils.vSpace(),
          Utils.vSpace(),
          isLoginActive
              ? _loginLayout()
              : _registerLayout()
        ],
      )
    );
  }

  _tabItem(String title,bool isActive){
    return InkWell(
      onTap: (){
        setState(() {
          if(isLoginActive){
            isLoginActive = false;
          } else {
            isLoginActive = true;
          }
        });
      },
      child: Container(
        height: 45,
        width: Utils.screenDimension(context, 'width') * .4,
        decoration: BoxDecoration(
            color: isActive ? Colors.green : Colors.grey,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 15,
                letterSpacing: 3,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  _loginLayout(){
    return Column(
      children: [
        EntryField(
            textInputType: TextInputType.phone,
            labelText: 'Login',
            shouldDisable: false,
            onTextChanged: (String value) {},
            hintText: 'Enter your login'),

        EntryField(
            textInputType: TextInputType.phone,
            labelText: 'Password',
            shouldDisable: false,
            onTextChanged: (String value) {
              // _viewModel!.onNext(PhoneNumberEntered(value));
            },
            hintText: 'Enter your password'),
        _rememberLayout(),
        const ColorButton('Continue'),
      ],
    );
  }

  _registerLayout(){
    return Column(
      children: [
        EntryField(
            textInputType: TextInputType.phone,
            labelText: 'Account Number',
            shouldDisable: false,
            onTextChanged: (String value) {},
            hintText: 'Enter your Account Number'),
        Utils.vSpace(),
        const ColorButton('Continue'),
      ],
    );
  }


}
