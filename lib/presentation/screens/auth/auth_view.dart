import 'package:bank_app/data/model/auth/payload/login_payload.dart';
import 'package:bank_app/data/model/auth/payload/signup_payload.dart';
import 'package:bank_app/presentation/components/widgets/colorButton.dart';
import 'package:bank_app/presentation/components/widgets/textField.dart';
import 'package:bank_app/presentation/screens/auth/auth_view_model.dart';
import 'package:bank_app/presentation/utils.dart';
import 'package:bank_app/presentation/values/colors.dart';
import 'package:bank_app/presentation/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';


class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {

  bool isLoginActive = true;
  // TextEditingController signUpEmail = TextEditingController();
  // TextEditingController signUpPassword = TextEditingController();
  // TextEditingController signUpUsername = TextEditingController();
  //
  // TextEditingController signInUsername = TextEditingController();
  // TextEditingController signInPassword = TextEditingController();

  String signInUsername = '',signInPassword = '', signUpEmail = '', signUpPassword = '',signUpUsername= '';

  @override
  Widget build(BuildContext context) {
    AuthViewModel model = context.watch<AuthViewModel>();
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
                  _layoutTab(model),
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
  _layoutTab(AuthViewModel model){
    return Container(
        padding: const EdgeInsets.all(16),
      child: Expanded(
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
                ? _loginLayout(model)
                : _registerLayout(model)
          ],
        ),
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
  _loginLayout(AuthViewModel model){
    return Column(
      children: [
        EntryField(
            labelText: StringClass.loginLowerCase,
            shouldDisable: false,
            onTextChanged: (String value) {
              print('CHANGED_VALUE :: $value');
            signInUsername = value;
            },
            hintText: 'Enter your login'),

        EntryField(
            textInputType: TextInputType.visiblePassword,
            labelText: 'Password',
            shouldDisable: false,
            onTextChanged: (String value) {
              signInPassword = value;
              // _viewModel!.onNext(PhoneNumberEntered(value));
            },
            hintText: 'Enter your password'),
        _rememberLayout(),
        ColorButton('Continue', onclick: (){
          print('VALUE ::: $signInUsername, $signInPassword');
          if(signInUsername.isNotEmpty && signInPassword.isNotEmpty){
            model.login(context, LoginPayload(userLogin: signInUsername, userPassword: signInPassword));
          } else {
            Fluttertoast.showToast(
                msg: "Fill all empty fields",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0 );
          }
        },),


      ],
    );
  }
  _registerLayout(AuthViewModel model){
    return Column(
      children: [
        EntryField(

            labelText: 'Username',
            shouldDisable: false,
            onTextChanged: (String value) {
              signUpUsername = value;
            },
            hintText: 'Enter Username'),
        EntryField(

            labelText: 'Email Address',
            shouldDisable: false,
            onTextChanged: (String value) {
              signUpEmail = value;
            },
            hintText: 'Enter Email address'),

        EntryField(
            labelText: 'Password',
            shouldDisable: false,
            onTextChanged: (String value) {
              signUpPassword = value;
            },
            hintText: 'Enter your password'),
        ColorButton('Continue', onclick: (){
          if(signUpUsername.isNotEmpty && signUpEmail.isNotEmpty && signUpPassword.isNotEmpty){
            model.signUp(context, SignupPayload(username: signUpUsername,email: signUpEmail, password: signUpPassword));
          }else{
            Fluttertoast.showToast(
                msg: "Fill empty fields",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }
        }
        ),
      ],
    );
  }

}
