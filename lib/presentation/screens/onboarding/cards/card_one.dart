import 'package:bank_app/presentation/screens/auth/auth_view.dart';
import 'package:flutter/material.dart';
class CardOne extends StatelessWidget {
  const CardOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(

              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bankthree.jpg"),
                      fit: BoxFit.cover
                  ))),

          Center(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(bottom: 300),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.account_balance_outlined,
                              color: Colors.white),
                          Text('access',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,

                            ),),
                        ],
                      ),
                    ),
                    const Padding(
                      padding:EdgeInsets.fromLTRB(80, 100, 80, 40),

                      child: Text('Welcome to the home of convenient banking',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),),
                    ),
                    SizedBox(
                      width: 200.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const AuthView()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellowAccent,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                        ),
                        child:  const Text('ENTER HERE'),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}








