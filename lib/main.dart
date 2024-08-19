import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_icon/animated_icon.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 68, 0, 0),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/profile.gif'),
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'Oral S.I Napier',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      "Mobile Application Developer",
                      speed: Durations.short1,
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSans3',
                          fontSize: 18,
                          color: Colors.white),
                    )
                  ],
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      "Junior Ethical Hacker",
                      speed: Durations.short2,
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSans3',
                          fontSize: 18,
                          color: Colors.white),
                    )
                  ],
                ),
                Card(
                  margin: const EdgeInsets.fromLTRB(45, 0, 45, 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimateIcon(
                        onTap: () {},
                        iconType: IconType.continueAnimation,
                        height: 40,
                        width: 40,
                        color: const Color.fromARGB(255, 68, 0, 0),
                        animateIcon: AnimateIcons.mail,
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'napier24@protonmail.com',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.fromLTRB(45, 0, 45, 0),
                  shadowColor: Colors.blue,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimateIcon(
                        onTap: () {},
                        iconType: IconType.continueAnimation,
                        height: 40,
                        width: 40,
                        color: const Color.fromARGB(255, 68, 0, 0),
                        animateIcon: AnimateIcons.cloud,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'linuxLover-byte on Github',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: AnimateIcon(
              onTap: () {},
              iconType: IconType.continueAnimation,
              height: 40,
              width: 40,
              color: Colors.black26,
              animateIcon: AnimateIcons.list,
            ),
          ),
        ),
      ),
    );
  }
}
