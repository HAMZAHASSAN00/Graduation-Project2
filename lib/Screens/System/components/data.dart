import 'package:flutter/material.dart';


class DataPage extends StatelessWidget {
  const DataPage({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double roofTankLevel = 0.4; // Sample value, replace with actual data
    double groundTankLevel = 0.7; // Sample value, replace with actual data

    return  Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/free_water.png',
                  width: 500,
                  height: 500,
                ),
                Center(child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    buildTank("Roof Tank", roofTankLevel),
                    SizedBox(height: 50,),
                    buildTank("Ground Tank", groundTankLevel),
                  ],),),

              ],),


          ],
        ),
      ),
    );
  }
  Widget buildTank(String title, double tankLevel) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
              ),
            ),
            Container(
              width: 150 * tankLevel,
              height: 150 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlue,
              ),
            ),
            Positioned.fill(
              child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${(tankLevel * 100).toInt()}% ",
                        style: TextStyle(fontSize: 20, color: Colors.white,),
                      ),
                      Text(
                        "${title} ",
                        style: TextStyle(fontSize: 20, color: Colors.white,),
                      ),
                    ],)
              ),
            ),
          ],
        ),
        // SizedBox(height: 20),
        // Text(
        //   title,
        //   style: TextStyle(fontSize: 24),
        //),

      ],
    );
  }

}