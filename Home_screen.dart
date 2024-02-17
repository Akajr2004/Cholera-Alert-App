import 'package:flutter/material.dart';
import 'package:app/Screens/prevention_screen.dart';
import 'package:app/Screens/symptoms_screen.dart';
import 'package:app/Screens/about_screen.dart';
import 'package:app/Screens/location_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue[700],
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Home_Page(),
    const PreventionPage(),
    const Symptoms_Page(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 173, 203, 210),
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        title: Text(
          "User DashBoard",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            tooltip: 'Home',
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            tooltip: 'Prevention Tips',
            enableFeedback: false,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const PreventionPage())));
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.health_and_safety,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.health_and_safety_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            tooltip: 'Symptoms',
            enableFeedback: false,
            onPressed: () {
              //setState(() {
              //pageIndex = 2;
              //});
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const Symptoms_Page())));
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.monitor_heart,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.monitor_heart_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            tooltip: 'NearBy Hospital',
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.directions,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.directions,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  final int confirmedCases = 3757; // Replace with actual data
  final int confirmedDeaths = 128; // Replace with actual data
  final int healedCases = 200; // Replace with actual data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildProgressBar(
              label: 'Confirmed Cases',
              value: confirmedCases.toDouble(),
            ),
            SizedBox(height: 16),
            buildProgressBar(
              label: 'Confirmed Deaths',
              value: confirmedDeaths.toDouble(),
            ),
            SizedBox(height: 16),
            buildProgressBar(
              label: 'Healed Cases',
              value: healedCases.toDouble(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildProgressBar({required String label, required double value}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 8),
      LinearProgressIndicator(
        value: value / 3757,
        valueColor: AlwaysStoppedAnimation<Color>(
            const Color.fromARGB(255, 25, 118, 210)),
      ),
      SizedBox(height: 8),
      Text('$value out of 3757'),
    ],
  );
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
