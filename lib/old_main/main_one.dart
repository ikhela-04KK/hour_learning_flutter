// // ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {

//   final List<Color> colors =  [
//     Colors.deepPurple[100]!, 
//     Colors.deepPurple[400]!, 
//     Colors.deepPurple[900]! ,
//   ]; 
//   final List<String> names = [
//     "Laura", 
//     "Mackenzie", 
//     "Stanislas"
//   ];




//   MyApp({super.key});

//   // crée des listes à la demande oubien liste personnalisé

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           // backgroundColor: Colors.deepPurple[200],
//           // appBar: AppBar(
//           //     title: Text(
//           //       'First Application',
//           //       style: TextStyle(color: Colors.white),
//           //     ),
//           //     backgroundColor: Colors.deepPurple[900],
//           //     centerTitle: true, // centrer le texte qui dans le AppBar
//           //     elevation: 0,
//           //     leading: IconButton(
//           //       icon: Icon(Icons.menu),
//           //       onPressed: () => {print("button is pressed")},
//           //       color: Colors.white,
//           //     ),
//           //     actions: <Widget>[
//           //       IconButton(
//           //         icon: const Icon(Icons.logout),
//           //         tooltip: 'Open shopping cart',
//           //         onPressed: () {
//           //           // handle the press
//           //           print("button is pressed");
//           //         },
//           //         color: Colors.white,
//           //       ),
//           //     ]),
//           // body: Center(
//           //   child: Container(
//           //     height: 300,
//           //     width: 300,
//           //     padding: EdgeInsets.all(25),
//           //     decoration: BoxDecoration(
//           //         color: Colors.deepPurple[900],
//           //         borderRadius:
//           //             BorderRadius.circular(20) //  sert à décorer la boxe
//           //         ),
//           //     // child: Text(
//           //     //   "Koffi Kan Marc",
//           //     //   style: TextStyle(
//           //     //     color: Colors.white,
//           //     //     fontSize: 28,
//           //     //     fontFamily: "JetBrainsMono",
//           //     //     fontWeight: FontWeight.bold
//           //     //     )
//           //     //   ),
//           //     child: Icon(
//           //       Icons.favorite,
//           //       color: Colors.white,
//           //       size: 64,
//           //     ),
//           //   ),
//           // ),
//           // body: ListView(
//           //   scrollDirection: Axis.horizontal,
//           //   children: <Widget>[
//           //     Container(
//           //       width: 400,
//           //       color: Colors.deepPurple[400],
//           //       child: Center(
//           //         child: Text("koffi"),
//           //       ),
//           //     ),
//           //     Container(
//           //       width: 400,
//           //       color: Colors.deepPurple[300],
//           //       child: Center(
//           //         child: Text("kan"),
//           //       ),
//           //     ),
//           //     Container(
//           //       width: 400,
//           //       color: Colors.deepPurple[200],
//           //       child: Center(
//           //         child: Text("marc"),
//           //       ),
//           //     ),
//           //   ],
//           // ),
//           //   body: Column(
//           //     children: <Widget>[
//           //       Expanded(
//           //         flex: 1,
//           //         child: Container(color: Colors.deepPurple[400]),
//           //       ),
//           //       Expanded(
//           //         flex: 2,
//           //         child: Container(
//           //           color: Colors.deepPurple[300],
//           //         ),
//           //       ),
//           //       Expanded(
//           //         flex: 1,
//           //         child: Container(color: Colors.deepPurple[200]),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           // body: ListView.builder(
//           //   itemCount: names.length,
//           //   itemBuilder: (context, index) => ListTile(
//           //     title: Text(names[index]),
//           //   ),
//           // ),
//           //   body: GridView.builder(
//           //     itemCount: 64,
//           //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           //       crossAxisCount:4
//           //     ),
//           //     itemBuilder: (context, builder)=>Container(
//           //     color: Colors.deepPurple[400],
//           //     margin: EdgeInsets.all(2),
//           //   )
//           // ),
//           // body:Stack(
//           //   alignment: Alignment.center,
//           //   children: [
//           //     Container(
//           //       height: 300,
//           //       width: 300,
//           //       color: Colors.deepPurple[300],
//           //     ),
//           //     Container(
//           //       height: 200,
//           //       width: 200,
//           //       color: Colors.deepPurple[200],
//           //     ),
//           //     Container(
//           //       height: 100,
//           //       width: 100,
//           //       color: Colors.deepPurple[100],
//           //     )
//           //   ],
//           //   ),
//           // body: ListView(
//           //   scrollDirection: Axis.horizontal,
//           //   children: <Widget>[
//           //     SizedBox(
//           //       width: 20
//           //     ),
//           //     Center(
//           //       child: GestureDetector(
//           //         onTap: () {
//           //           print("on tap");
//           //         },
//           //         child: Container(
//           //           decoration: BoxDecoration(
//           //               color: Colors.deepPurple[200],
//           //               borderRadius: BorderRadius.circular(20)),
//           //           height: 300,
//           //           width: 300,
//           //           child: Center(
//           //             child: Text(
//           //               "Tap me",
//           //               style: TextStyle(
//           //                 color: Colors.white,
//           //                 fontFamily: "JetBrainMono",
//           //                 fontSize: 34,
//           //                 fontWeight: FontWeight.w600,
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //       ),
//           //     ),
//           //     SizedBox(width: 20),
//           //     Center(
//           //       child: GestureDetector(
//           //         onTap: () {
//           //           print("on tap");
//           //         },
//           //         child: Container(
//           //           decoration: BoxDecoration(
//           //             color: Colors.deepPurple[400],
//           //             borderRadius: BorderRadius.circular(20)
//           //           ),
//           //           height: 300,
//           //           width: 300,
//           //           child: Center(
//           //             child: Text(
//           //               "Tap me",
//           //               style: TextStyle(
//           //                 color: Colors.white,
//           //                 fontFamily: "JetBrainMono",
//           //                 fontSize: 34,
//           //                 fontWeight: FontWeight.w600,
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //       ),
//           //     ),
//           //     SizedBox(width: 20),
//           //     Center(
//           //       child: GestureDetector(
//           //         onTap: () {
//           //           print("on tap");
//           //         },
//           //         child: Container(
//           //           decoration: BoxDecoration(
//           //               color: Colors.deepPurple[700],
//           //               borderRadius: BorderRadius.circular(20)
//           //           ),
//           //           height: 300,
//           //           width: 300,
//           //           child: Center(
//           //             child: Text(
//           //               "Tap me",
//           //               style: TextStyle(
//           //                 color: Colors.white,
//           //                 fontFamily: "JetBrainMono",
//           //                 fontSize: 34,
//           //                 fontWeight: FontWeight.w600,
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //       ),
//           //     ),
//           //     SizedBox(width: 20),
//           //   ],
//           // ),
//           body: ListView(
//             scrollDirection: Axis.horizontal,
//             children: <Widget>[
//               for(Color color in colors)
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
//                   child: TapMe(
//                     color: color,
//                     onTap: (){
//                       print("on tap");
//                     },
//                   ),
//                 )
              
//             ],
//           ),
//         ));
//   }
// }
