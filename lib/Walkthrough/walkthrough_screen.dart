import 'package:apotech/Auth/welcome.dart';
import 'package:apotech/Walkthrough/walkthrough_page.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';


class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({Key? key}) : super(key: key);

  @override
  _WalkthroughScreenState createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  List<String> descriptions = [
    'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer. 1',
    'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer. 2 ',
    'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer. 3',
  ];

  List<String> title = [
    'View and buy Medicine Online',
    'Online Medical & Healthcare',
    'Get Delivery On time'
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: 3, // Ganti dengan jumlah halaman walkthrough
            itemBuilder: (context, index) {
              return WalkthroughPage(
                image: 'assets/images/w${index + 1}.png',
                title: title[index],
                description: descriptions[index],
              );
            },
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80.0),
              child: DotsIndicator(
                dotsCount: 3, // Jumlah halaman
                position: _currentPage.toDouble(),
                decorator: DotsDecorator(
                  size: const Size.square(8.0),
                  activeSize: const Size(20.0, 8.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const WelcomeScreen()),
              );
            },
            child: const Text('Skip'),
          ),
          const Spacer(flex: 8),
          TextButton(
            onPressed: () {
              if (_currentPage == 2) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                );
              } else {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            },
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}

