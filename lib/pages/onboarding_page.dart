import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task1/pages/login_page.dart';
import 'package:task1/pages/signup_page.dart';
import 'package:task1/widgets/custom_button.dart';
import 'package:task1/widgets/custom_row.dart';
import 'package:task1/widgets/onboarding_body.dart';
import 'package:task1/widgets/onboarding_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageController = PageController();
  int index = 0;

  @override
  dispose() {
    pageController.dispose();
    super.dispose();
  }

  final List<Widget> pages = const [
    OnboardingBody(
      imagePath: 'assets/images/onboarding1.png',
      title: 'Get food delivery to your doorstep asap',
      subtitle: 'We have young and professional delivery team '
          'that will bring your food as soon as possible '
          'to your doorstep',
    ),
    OnboardingBody(
      imagePath: 'assets/images/onboarding2.png',
      title: 'Buy any food from your favorite restaurant',
      subtitle: 'We are constantly adding your favorite restaurant throughout '
          'the territory and around your area '
          'carefully selected',
    ),
    OnboardingBody(
      imagePath: 'assets/images/onboarding3.png',
      title: 'Get food delivery to your doorstep asap',
      subtitle: 'We have young and professional delivery team '
          'that will bring your food as soon as possible '
          'to your doorstep',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: const Color(0xffF9F3E7),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '7Krave',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
                color: Color(0xff51afab),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  return pages[index];
                },
                onPageChanged: (newIndex) {
                  setState(() {
                    index = newIndex;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnboardingIndicator(
                  index: index,
                  currentPageIndex: 0,
                ),
                OnboardingIndicator(
                  index: index,
                  currentPageIndex: 1,
                ),
                OnboardingIndicator(
                  index: index,
                  currentPageIndex: 2,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                content: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
              ),
            ),
            CustomRow(
              title: 'Don\'t have an account?',
              btnTitle: 'Sign up',
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignupPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
