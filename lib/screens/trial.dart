// import 'package:flutter/material.dart';

// class WelcomePage extends StatefulWidget {
//   const WelcomePage({Key? key}) : super(key: key);

//   @override
//   State<WelcomePage> createState() => _WelcomePageState();
// }

// class _WelcomePageState extends State<WelcomePage> {
//   // List<String> images = ['images/food.png', 'images/girl.png'];
//   Map<String, String> text = {"heading": "", "paragraph": ""};
//   String heading = "", paragraph = "";
//   List<Map> pages = [
//     {
//       "images": ['images/food.png'],
//       "heading": "Page One",
//       "paragraph": "This is page one. thank you"
//     },
//     {
//       "images": ['images/machine.png'],
//       "heading": "Page Two",
//       "paragraph": "This is page two. thank you"
//     },
//     {
//       "images": ['images/man.png'],
//       "heading": "Page Three",
//       "paragraph": "This is page three. thank you"
//     },
//     {
//       "images": ['images/tailor.png'],
//       "heading": "Page Four",
//       "paragraph": "This is page four. thank you"
//     },
//   ];
//   PageController controller = PageController();
//   int activeImage = 0;

//   @override
//   void initState() {
//     super.initState();
//     controller = PageController();
//     heading = pages[controller.initialPage]["heading"];
//     paragraph = pages[controller.initialPage]["paragraph"];
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   Widget pageMarkup(Map page) {
//     Widget output = const SizedBox();

//     if (page["images"].length > 1) {
//       output = PageView.builder(
//           pageSnapping: true,
//           scrollDirection: Axis.horizontal,
//           itemCount: page["images"].length,
//           itemBuilder: (context, index) =>
//               imageBackground(page["images"][index]));
//     } else {
//       output = imageBackground(page["images"][0]);
//     }

//     return output;
//   }

//   Widget imageBackground(String image) {
//     return Opacity(
//       opacity: 0.5,
//       child: Image(
//         image: AssetImage(image),
//         fit: BoxFit.cover,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Stack(children: [
//         PageView.builder(
//             pageSnapping: true,
//             controller: controller,
//             scrollDirection: Axis.horizontal,
//             itemCount: pages.length,
//             onPageChanged: (index) {
//               setState(() {
//                 heading = pages[index]["heading"];
//                 paragraph = pages[index]["paragraph"];
//               });
//             },
//             itemBuilder: (context, index) {
//               return pageMarkup(pages[index]);
//             }),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: IgnorePointer(
//             ignoring: true,
//             child: Column(
//               children: [
//                 const Expanded(child: SizedBox()),
//                 Column(
//                   children: [
//                     Text(
//                       heading,
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(
//                           fontSize: 24,
//                           height: 1.5,
//                           color: Color(0xFFFFFFFF),
//                           fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       paragraph,
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(
//                           color: Colors.white,
//                           height: 1.5,
//                           fontSize: 15,
//                           fontWeight: FontWeight.w300),
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 150,
//                 ),
//               ],
//             ),
//           ),
//         )
//       ]),
//     );
//   }
// }
