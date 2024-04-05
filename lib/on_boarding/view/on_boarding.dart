import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:team/components/custom_material_button.dart';
import 'package:team/login_screen/view/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: OnBoardingScreenBody(),
        ),
      ),
    );
  }
}

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({
    super.key,
  });

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              Get.offAll(() => const LoginScreen());
            },
            child: const Text(
              "Skip",
            ),
          ),
        ),
        Expanded(
          child: PageView(
            controller: pageController,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Doctors-cuate.png"),
                  const Gap(25),
                  const Text("Welcome to Medi app",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                  const Text(
                    "The future of medical treatment Here we take care of your health from your home in the easiest way",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Doctors-amico.png"),
                  const Gap(25),
                  const Text("We can do a lot with us",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                  const Text(
                    "Beginning from check your health and predict some dangerous diagnosis, reached to our chatbot Medi that can tell you any symptoms you fell then Medi help you as quickly as possible",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Body anatomy-pana.png"),
                  const Gap(25),
                  const Text("Our body ",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                  const Text(
                    "Has a very complex system From the brain ,Nervous system, digestive system,Respiratory system,etc...So we have to check if it was any issue at any system and work to solve it as quickly as possible,Here ,comes our work",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Virus-pana.png"),
                  const Gap(25),
                  const Text("Dangerous diagnoses",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                  const Text(
                    "Today's world has a lot of dangerous diagnoses such as diabetes, heart attack, breast cancer, Parkinson etc... For more information about these diagnoses in details and some first aid you can check this in our app",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Blood test-rafiki.png"),
                  const Gap(25),
                  const Text("Health information",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                  const Text(
                    "In our app we take some information about your health and check if you have any issue to visit your doctor or not Definitely we wish all things were good",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Chat bot-amico.png"),
                  const Gap(25),
                  const Text(" Medi chatbot",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                  const Text(
                    "Now , it's time to talk about our essential feature Medi . Medi our medical chatbot and Your personal therapist . You can talk to it at any time, tell it about any of your symptoms and with your mother language. Medi At your service at any time",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: 6,
          effect: JumpingDotEffect(
            dotWidth: 12,
            dotHeight: 12,
            activeDotColor: Colors.blue,
            dotColor: Colors.blue.shade100,
          ),
        ),
        const Gap(25),
        CustomButton(
            title: "Next",
            onPressed: () {
              if (pageController.page == 5) {
                Get.offAll(() => const LoginScreen());
              } else {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              }
            }),
      ]),
    );
  }
}
