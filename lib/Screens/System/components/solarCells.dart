import 'package:flutter/material.dart';


class SolarCellsPage extends StatelessWidget {
  const SolarCellsPage({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Container(
      color: Colors.orangeAccent,
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/solar_cells.png',
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