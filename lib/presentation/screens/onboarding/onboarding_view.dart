import 'package:bank_app/presentation/screens/onboarding/cards/card_one.dart';
import 'package:flutter/material.dart';
import 'cards/card_three.dart';
import 'cards/card_two.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        PageView.builder(
          controller : _pageController,
          onPageChanged: (int page) {
            setState(() {
              _activePage = page;
            });
          },
          itemCount: _pages.length,
          itemBuilder: (BuildContext context, int index){
            return _pages[index % _pages.length];
          },
        ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 50,
          child: Container(
            color: Colors.black54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                _pages.length,
                  (index) =>  Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10),
                      child: InkWell(
                      onTap: () {
                        _pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                        child: const CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                        ),
                      ),
                  )
              ),
            ),
          ),
        )
      ],
      ),
    );
  }


  int _activePage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  final List<Widget> _pages = [
    const CardOne(),
    const CardTwo(),
    const CardThree()
  ];
}
