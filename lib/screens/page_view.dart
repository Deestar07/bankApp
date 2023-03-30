import 'package:flutter/material.dart';
import 'card_one.dart';
import 'card_three.dart';
import 'card_two.dart';
import 'package:bank_app/main.dart';
class CustomPageView extends StatefulWidget {
  const CustomPageView({Key? key}) : super(key: key);

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  //declare and initialise the page controller
  final PageController _pageController = PageController(initialPage: 0);

  //the index of the current page

  int _activePage = 0;

  final List<Widget> _pages = [
    const CardOne(),
    const CardTwo(),
    const CardThree()
  ];

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
                      padding: EdgeInsets.symmetric(horizontal:10),
                      child: InkWell(
                      onTap: () {
                        _pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                        child: CircleAvatar(
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
}
