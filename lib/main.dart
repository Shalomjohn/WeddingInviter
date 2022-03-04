import 'package:flutter/material.dart';
import 'widget/all_confetti_widget.dart';
import 'widget/glass.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Confetti Widget';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xFFf6a192),
        body: Stack(
          children: [
            AllConfettiWidget(key: UniqueKey(), child: Container()),
            Center(
              child: GlassMorphism(
                start: 0.6,
                end: 0.45,
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        const Text(
                          "You're invited to our wedding!!! 🥳",
                          style: TextStyle(fontSize: 23, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          child: Text(
                            'Couples',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '🤵🏾‍♂️',
                                style: TextStyle(fontSize: 28),
                              ),
                              Text(
                                'John Okon Asuquo',
                                style: TextStyle(fontSize: 28),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '👰🏾‍♀️',
                                style: TextStyle(fontSize: 28),
                              ),
                              Text(
                                'Emma Henry Ekpo',
                                style: TextStyle(fontSize: 28),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
