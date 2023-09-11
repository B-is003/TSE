// import 'package:flutter/material.dart';
//
// class loadingScreen extends StatelessWidget {
//   final Widget child;
//   final bool inAsyncCall;
//   final double opacity;
//   final Color color;
//   final Animation<Color> valueColor;
//
//   loadingScreen({
//     required this.child,
//     required this.inAsyncCall,
//     this.opacity = 0.3,
//     this.color = Colors.grey,
//     required this.valueColor,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> widgetList = [child]; // Initialize the list with child
//
//     if (inAsyncCall) {
//       final modal = Stack(
//         children: [
//           Opacity(
//             opacity: opacity,
//             child: ModalBarrier(dismissible: false, color: color),
//           ),
//           Center(
//             child: CircularProgressIndicator(
//               valueColor: valueColor,
//             ),
//           ),
//         ],
//       );
//       widgetList.add(modal);
//     }
//     return Stack(
//       children: widgetList,
//     );
//   }
// }
