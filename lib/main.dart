import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xFF1B2A48),
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontSize: 20, color: Colors.white),
          titleLarge: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
          titleMedium: TextStyle(
            color: Color(0xFF1B2A48),
            fontWeight: FontWeight.bold,
          ),
          labelMedium: TextStyle(
            color: Color(0xFFAAAAAA),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFDCDCDC),
        appBar: const MyAppBar(),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1B2A48),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset(
                          "assets/ben.jpg",
                          width: 117,
                          height: 117,
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Text(
                        "Bahador Fouladi",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "level 10",
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 250,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 22),
                    width: 366,
                    height: 242,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Your points",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                const Text(
                                  "+20 since last week",
                                  style: TextStyle(
                                    color: Color(0xFF888888),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Course(
                              image: "assets/html.jpg",
                              text: "18",
                            ),
                            Course(
                              image: "assets/js.jpg",
                              text: "7",
                            ),
                            Course(
                              image: "assets/css.jpg",
                              text: "10",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 13),
              child: Text(
                "Classmates",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Text(
              "All interested in the same field!",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF8D8D8D),
                  ),
            ),
            Text(
              "Go on, get social!",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF8D8D8D),
                  ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 21),
              width: 366,
              height: 86,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Classmates(
                    image: "assets/tom.png",
                    text: "Tom",
                  ),
                  const Classmates(
                    image: "assets/jane.png",
                    text: "Jane",
                  ),
                  const Classmates(
                    image: "assets/sara.png",
                    text: "Sara",
                  ),
                  const Classmates(
                    image: "assets/eli.png",
                    text: "Eli",
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFECB41A)),
                    ),
                    child: const Expanded(
                      child: Text(
                        "View all",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Classmates extends StatelessWidget {
  const Classmates({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 20,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class Course extends StatelessWidget {
  const Course({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 67,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xFFECECEC),
            // color: Color.fromARGB(255, 49, 5, 5),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.scaleDown,
            width: 43,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: preferredSize.height,
        decoration: const BoxDecoration(
          color: Color(0xFF1B2A48),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.palette_outlined,
                color: Theme.of(context).textTheme.headlineSmall!.color,
              ),
              Text(
                "Your profile",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Icon(
                Icons.language_outlined,
                color: Theme.of(context).textTheme.headlineSmall!.color,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
