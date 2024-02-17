import 'package:flutter/material.dart';

class Symptoms_Page extends StatelessWidget {
  const Symptoms_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        elevation: 10.0,
        centerTitle: true,
        title: Text('Symptoms',
            style: TextStyle(
              //fontSize: 24.0,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Article Title
          Text(
            'Navigating Cholera: Unmasking the Symptoms',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),

          Text(
              'Cholera, a stealthy assailant, manifests itself through a set of distinctive symptoms that can rapidly escalate from discomfort to life-threatening conditions. Understanding these signs is crucial for early detection and prompt intervention.',
              style: TextStyle(fontSize: 16.0)),
          SizedBox(
            height: 10.0,
          ),
          Text('1. Watery Diarrhoea: The Telltale Sign',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'The hallmark of cholera is profuse, watery diarrhea. Affected individuals may experience'
            'sudden and severe bouts of diarrhea, leading to rapid fluid loss and dehydration. The sheer'
            'volume of fluid loss distinguishes cholera from other gastrointestinal ailments',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          Image.asset(
            'Assets/Pictures/diarhoea.jpg',
            width: MediaQuery.of(context).size.width,
            height: 200.0,
            //fit: BoxFit.cover,
          ),
          Text(
            '',
            style: TextStyle(fontSize: 16.0),
          ),
          // Article Images

          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
