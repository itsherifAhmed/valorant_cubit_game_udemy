import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:valorant_app_test/screens/home.dart';

import '../constant/constant.dart';
import '../data/models/onboarding_model.dart';


class Onbording extends StatefulWidget {
  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Container buildDot(int index, BuildContext context, Color color) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(20), color:
      currentIndex==index ? Color(0xffFFB200):Color(0xffD9D9D9)

      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller:  pageController,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 43),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 154),
                          child: Lottie.asset(
                            contents[i].image,
                            height: 370,
                            width: 320,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 37),
                          child: Text(contents[i].title,
                              style: Constant.title_onBoarconstding_textStyle),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(contents[i].secTitle,
                              style: Constant.title_onBoarconstding_textStyle),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 32),
                          child: Text(contents[i].discription,
                              textAlign: TextAlign.center,
                              style: Constant.desc_onBoarconstding_textStyle),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                    (index) =>  buildDot(
                    index,
                    context,
                    currentIndex == sherif.length - index
                        ? Constant.primary_color
                        : Constant.onboarding_dots),
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
                color: Constant.next_btn_onBoarconstding,
                borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.all(40),
            width: 360,
            child: TextButton(
              child: Text(
                  currentIndex == contents.length - 1
                      ? "Continue"
                      : "Next",
                  style: Constant.btn_onBoarconstding_textStyle),
              onPressed: () async {
                setState(()async {
                  if ( currentIndex == contents.length - 1) {
                    SharedPreferences prefInst =
                    await SharedPreferences.getInstance();
                    prefInst.setBool('isIntroRead', true);

                    // ignore: use_build_context_synchronously
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (ctx)=>const Home()));
                  }
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
