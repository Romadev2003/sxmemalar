import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'type_wiget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Lottie.asset(
                'assets/lotties/bg.json',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (position) {
                    setState(
                          () {
                        index = position;
                      },
                    );
                  },
                  controller: _pageController, // assign the page controller
                  children: [
                    setPage("quick", "Juda tez ",
                        "Malumotlarni topish  sodda tuzulgan bo`lib bu yerdan istalgan sxema elementi haqida juda tez malumot olishingiz mumkin"),
                    setPage("educational", "O`rganish uchun qulay",
                        "Har bir sxema elementi Sxemada belgalanish surati va xusuyatlari haqda qisqacha to`xtalib o`tilgan bo`lib elab qolishga juda qulay"),
                    setPage("safe", "Ishonchli Malumotlar",
                        "Ilovada keltirilgan har bir malumot tastiqlangan ishonchli"),
                    setPage("usful", "Foydalanish uchun qulay",
                        "ilodagi malumotlar sxemalarni o`rganish uchun juda foydali"),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => _pageController.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease),
                        child: const Icon(
                          CupertinoIcons.left_chevron,
                          size: 50,
                        ),
                      ),
                      _setIcons(index),
                      GestureDetector(
                        onTap: () => _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease),
                        child: const Icon(
                          CupertinoIcons.right_chevron,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  if (true) ...{
                    TextButton(
                      onPressed: () {Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => TypeWiget(),
                        ),
                            (route) => false,
                      );},
                      child: const Text("Boshlash"),
                    )
                  }
                ],
              ),
              const SizedBox(
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }
  _setIcons(int pos) {
    return Row(
      children: [
        for (int i = 0; i < 4; i++) ...{
          if (i == pos) ...{
            const Icon(
              Icons.circle,
              color: Colors.yellow,
            )
          } else ...{
            const Icon(
              Icons.circle,
              color: Colors.white,
            )
          }
        }
      ],
    );
  }
  setPage(
      String lottiee,
      String name,
      String role,
      ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 100,
          child: Lottie.asset('assets/lotties/$lottiee.json'),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: 300,
          child: Text(
            role,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
        ),
      ],
    );
  }
}
