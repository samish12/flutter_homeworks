import 'package:flutter/material.dart';
import 'package:flutter_homework_02/model/onboarding_model.dart';
import 'package:flutter_homework_02/service/onboarding_service.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  final List<OnboardingModel> _pages = OnboardingService().getOnboardingItems();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void _skipToLastPage() {
    _pageController.jumpToPage(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 248, 196),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: _skipToLastPage,
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text('Skip', style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                itemBuilder: (context, index) {
                  final pageData = _pages[index];
                  return Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: Image.asset(pageData.imagePath, height: 320),
                        ),
                      ),
                      Container(
                        height: 280,
                        width: double.infinity, // Stretch to screen edges
                        decoration: const BoxDecoration(
                          color: Colors.white, // White background
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        padding: const EdgeInsets.only(
                          top: 50,
                          left: 20,
                          right: 20,
                          bottom: 20,
                        ),
                        child: Column(
                          children: [
                            Text(
                              pageData.title,
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              pageData.description,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 115, 115, 115),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(width: 18, height: 5, color: Color(0xff2222ff)),
                      const SizedBox(width: 5),
                      Container(
                        width: 10,
                        height: 5,
                        color: const Color.fromARGB(255, 178, 178, 178),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 10,
                        height: 5,
                        color: const Color.fromARGB(255, 178, 178, 178),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: _goToNextPage,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xff2222ff),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
