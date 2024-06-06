import 'package:flutter/material.dart';
import "./home.dart";

class Welcome extends StatefulWidget {
  const Welcome({super.key});
  State<Welcome> createState() => _Welcome();
}

class _Welcome extends State<Welcome> {
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
              "lib/image/vector-illustration-grocery-basket-green-basket_951778-1136-removebg-preview.png"),
          const SizedBox(
            width: 250,
            child: Text(
              "We Deliver Glossry At Your Footstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text("start ordering fresh item now"),
          ),
          SizedBox(
            width: 130,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 15),
              ),
              style: const ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
                  backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  overlayColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 71, 35, 133))),
            ),
          )
        ],
      ),
    );
  }
}
