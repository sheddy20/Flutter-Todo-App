// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyRide"),
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                child: Text("Ride with MyRide"),
                textColor: Colors.black,
                color: Colors.white,
                onPressed: () {},
                height: 20.0,
                minWidth: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ],
          ),
          SizedBox(width: 40.0),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "The decentralize rideshare webapp powered by smart contracts",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 45.0),
            Icon(
              Icons.car_rental,
              size: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
