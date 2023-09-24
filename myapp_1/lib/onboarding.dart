import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'Welcome to SDSU Children\'s Center App',
            body:
                'Everyday communications between parents and teachers for our kids start from here.',
            image: Image.asset('image/12129_edited.jpg'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome to SDSU Children\'s Center',
            body:
                'We nurture our childeren together through this collaboration',
            image: Image.asset('image/12380_edited.jpg'),
            decoration: getPageDecoration()),
        PageViewModel(
          title: 'Welcome to SDSU Children\'s Center',
          body:
              'We lead the way as an educational environment partnering with families, students, faculty, staff and the SDSU community to foster growth and promote lifelong learning.',
          image: Image.asset('image/12483_edited.jpg'),
        ),
      ],
      done: const Text('Let\'s go!'),
      onDone: () {
        Navigator.pushNamed(context, '/');
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
          color: Colors.blueGrey,
          size: const Size(10, 10),
          activeColor: Colors.blue,
          activeSize: const Size(22, 10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
      curve: Curves.bounceOut,
    );
  }
}

PageDecoration getPageDecoration() {
  return const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),
      bodyTextStyle: TextStyle(fontSize: 18, color: Colors.deepPurpleAccent),
      imagePadding: EdgeInsets.only(top: 40),
      pageColor: Colors.white);
}
