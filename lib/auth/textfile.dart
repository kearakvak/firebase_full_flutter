// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';


// class TextField extends StatelessWidget {
//   TextField({super.key});
//   final _textController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return  Padding(
//         padding:  EdgeInsets.symmetric(horizontal: 25.0),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             border: Border.all(
//               color: Colors.white,
//             ),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Padding(
//             padding:  EdgeInsets.only(left: 20.0),
//             child: TextField(
//               controller: _textController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 hintText: "Password",
//                 suffixIcon: IconButton(
//                   onPressed: () {
//                     _textController.clear();
//                   },
//                   icon: Icon(
//                     Icons.clear,
//                     color: Colors.green,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       );
//   }
// }
