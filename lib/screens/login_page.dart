import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        toolbarHeight: 80,
        centerTitle: true,
        elevation: 10,
        title: const Text('access',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.doorbell,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 50, 15, 25),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.black,
              ),
              onPressed: () {},
              child:  const Text('SIGN IN'),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children:  [
    SizedBox(
    width: 150.0,
    height: 45,
    child: ElevatedButton(
            ),
          ),
    SizedBox(
        width: 150.0,
        height: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightGreen,
            foregroundColor: Colors.black,
          ),
        onPressed: () {},
        child:  const Text('REGISTER'),
        ),
    ),
     ] ),
      ),
    );

  }
}
