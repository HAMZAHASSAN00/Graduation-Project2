// import 'package:flutter/material.dart';
// import 'package:flutter_auth/constants.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import '../../../constants.dart';
// class BottomNavigation extends StatefulWidget {
//   const BottomNavigation({Key? key, required this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _BottomNavigationState createState() => _BottomNavigationState();
// }
//
// class _BottomNavigationState extends State<BottomNavigation> {
//   late PageController _pageController;
//   int _page = 0;
//   double groundTankLevel = 0.7; // Sample value, replace with actual data
//   double roofTankLevel = 0.4; // Sample value, replace with actual data
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: PageView(
//         controller: _pageController,
//         physics: const BouncingScrollPhysics(),
//         onPageChanged: onPageChanged,
//         children: <Widget>[
//           // Container(
//           //   color: Colors.black12,
//           //
//           //
//           // ),
//           Container(
//             // decoration: BoxDecoration(
//             //   image: DecorationImage(
//             //     image: AssetImage('assets/images/waterBackground.jpg'), // Replace with your image path
//             //     fit: BoxFit.cover,
//             //   ),
//             // ),
//            // color: Colors.black12,
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Stack(
//                     children: [
//                       Image.asset(
//                         'assets/images/free_water.png',
//                         width: 500,
//                         height: 500,
//                       ),
//                       Center(child:Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SizedBox(height: 20,),
//                           buildTank("Roof Tank", roofTankLevel),
//                           SizedBox(height: 50,),
//                           buildTank("Ground Tank", groundTankLevel),
//                         ],),),
//
//                     ],),
//
//
//                 ],
//               ),
//             ),
//           ),
//
//           Container(
//             color: Color(0xFFBAD3FF),
//             child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       'assets/images/water.png',
//                       width: 500,
//                       height: 500,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {},
//                           child: Text(
//                             "turn on".toUpperCase(),
//                           ),
//                         ),
//                         SizedBox(width: 20), // Add some space between the buttons
//                         ElevatedButton(
//                           onPressed: () {},
//                           child: Text(
//                             "turn off".toUpperCase(),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],)
//             ),
//
//           ),
//           Container(
//             color: Colors.orangeAccent,
//             child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       'assets/images/solar_cells.png',
//                       width: 500,
//                       height: 500,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {},
//                           child: Text(
//                             "turn on".toUpperCase(),
//                           ),
//                         ),
//                         SizedBox(width: 20), // Add some space between the buttons
//                         ElevatedButton(
//                           onPressed: () {},
//                           child: Text(
//                             "turn off".toUpperCase(),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],)
//             ),
//
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         elevation: 8.0 ,
//         items: const [
//           BottomNavigationBarItem(
//
//             icon: Icon(Icons.data_thresholding_outlined),
//             label: "Data",
//
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.water_drop_rounded),
//             label: "Tank",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.sunny),
//             label: "solar cells",
//           ),
//         ],
//         onTap: navigationTapped,
//         currentIndex: _page,
//       ),
//     );
//   }
//   Widget buildTank(String title, double tankLevel) {
//     return Column(
//       children: [
//         Stack(
//           children: [
//             Container(
//               width: 150,
//               height: 150,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: Colors.blue,
//               ),
//             ),
//             Container(
//               width: 150 * tankLevel,
//               height: 150 ,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.lightBlue,
//               ),
//             ),
//             Positioned.fill(
//               child: Align(
//                 alignment: Alignment.center,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "${(tankLevel * 100).toInt()}% ",
//                       style: TextStyle(fontSize: 20, color: Colors.white,),
//                     ),
//                     Text(
//                       "${title} ",
//                       style: TextStyle(fontSize: 20, color: Colors.white,),
//                     ),
//                 ],)
//               ),
//             ),
//           ],
//         ),
//         // SizedBox(height: 20),
//         // Text(
//         //   title,
//         //   style: TextStyle(fontSize: 24),
//         //),
//
//       ],
//     );
//   }
//   void navigationTapped(int page) {
//     _pageController.animateToPage(
//       page,
//       duration: const Duration(milliseconds: 300),
//       curve: Curves.easeIn,
//     );
//   }
//
//   void onPageChanged(int page) {
//     setState(() {
//       _page = page;
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//   }
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
// }
//
// void main() {
//   runApp(const MaterialApp(
//     home: BottomNavigation(title: 'Bottom Navigation Demo'),
//   ));
// }
