import 'package:flutter/material.dart';


class TankPage extends StatelessWidget {
  const TankPage({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFBAD3FF),
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/water.png',
                width: 500,
                height: 500,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150, // Adjust the width based on your preference
                    child: ElevatedButton(
                      onPressed: () {
                        // Add functionality for "turn on" button
                      },
                      child: Text(
                        "turn on".toUpperCase(),
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Add some space between the buttons
                  Container(
                    width: 150, // Adjust the width based on your preference
                    child: ElevatedButton(
                      onPressed: () {
                        // Add functionality for "turn on" button
                      },
                      child: Text(
                        "turn off".toUpperCase(),
                      ),
                    ),
                  ),
                ],
              ),
            ],)
      ),

    );
  }

}