// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:learning_firebase/config/colors.dart';
//
//
// // enum SigninCharacter{ fill , outline}
//
//
// class ProductOverview extends StatefulWidget {
//   const ProductOverview({Key? key}) : super(key: key);
//
//   @override
//   _ProductOverviewState createState() => _ProductOverviewState();
// }
//
// class _ProductOverviewState extends State<ProductOverview> {
//
//   // SigninCharacter _character = SigninCharacter.fill;
//
//   Widget bottomNavigatorBar(
//   {
//   required Color iconColor,
//     required Color backgroundColor,
//     required Color color,
//     required String title,
//     required IconData iconData,
// }) {
//     return Expanded(
//       child: Container(
//         padding: EdgeInsets.all(20),
//         color: backgroundColor,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               iconData,
//               size: 17,
//               color: iconColor,
//             ),
//             SizedBox(width: 5,),
//             Text(
//               title,
//               style: TextStyle(
//                 color: color,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Row(
//       children: [
//         bottomNavigatorBar(iconColor: Colors.grey,
//             backgroundColor: textColor,
//             color: Colors.white70,
//             title: "Add to Wishlist",
//             iconData: Icons.favorite_outline),
//
//         bottomNavigatorBar(
//             iconColor: Colors.grey,
//             backgroundColor: primaryColor,
//             color: textColor,
//             title: "Go to Cart",
//             iconData: Icons.shopping_bag_outlined)
//       ],
//       ),
//       appBar: AppBar(
//         backgroundColor: primaryColor,
//         iconTheme: IconThemeData( color: textColor, ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.arrow_back),
//             tooltip: 'Show Snackbar',
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ],
//         title: Text("Product Overview",
//         style: TextStyle(
//           color: textColor,
//         ),
//         ),
//       ),
//
//       body: ListView(
//         children: [
//           Expanded(
//             flex: 2,
//               child: Container(
//                 width: double.infinity,
//                 child: Column(
//                   children: [
//                     ListTile(
//                       title: Text("Fresh Spinach"),
//                       subtitle: Text("₹100"),
//                     ),
//                     Container(
//                       height: 250,
//                       padding: EdgeInsets.all(8),
//                       child: Image.network("https://pngimg.com/uploads/spinach/spinach_PNG10.png"),
//                     ),
//                     Container(
//                       padding: EdgeInsets.symmetric(horizontal: 20),
//                       width: double.infinity,
//                       child: Text("Available Options",
//                       textAlign: TextAlign.start,
//                         style: TextStyle(
//                           color: textColor,
//                           fontWeight: FontWeight.bold,
//                         ),
//
//                         ),
//                     ),
//
//                     Padding(padding: EdgeInsets.symmetric(
//                       horizontal: 10,
//                     ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                               CircleAvatar(
//                                 radius: 3,
//                                 backgroundColor: Colors.green[700],
//                               ),
//                               // Radio(
//                               //   value: SigninCharacter.fill,
//                               //   groupValue: _character,
//                               //   activeColor: Colors.green[700],
//                               //   onChanged: (value){
//                               //     setState(() {
//                               //       _character = SigninCharacter.fill;
//                               //     });
//                               //   },
//                               // ),
//                             ],
//                           ),
//                           Text("₹100"),
//                           Container(
//                             padding: EdgeInsets.symmetric(horizontal: 30,
//                                 vertical: 10),
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: Colors.grey
//                               ),
//                               borderRadius: BorderRadius.circular(30)
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(Icons.add,
//                                 size: 17,
//                                 color: primaryColor,),
//                                 Text("ADD",
//                                 style: TextStyle(
//                                   color: primaryColor,
//
//                                 ),
//                                 )
//
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//
//               ),
//           ),
//           Expanded(child: Container(
//             padding: EdgeInsets.all(20),
//             width: double.infinity,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(" About this product",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600,
//
//                 ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//
//                 Text(" A product is the item offered for sale. A product can be a service or an item. It can be physical or in virtual or cyber form. Every product is made at a cost and each is sold at a price. The price that can be charged depends on the market, the quality, the marketing and the segment that is targeted. Each product has a useful life after which it needs replacement, and a life cycle after which it has to be re-invented. In FMCG parlance, a brand can be revamped, re-launched or extended to make it more relevant to the segment and times, often keeping the product almost the same.",
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//
//                   ),
//                 ),
//
//               ],
//             ),
//           ),),
//
//         ],
//       ),
//     );
//   }
// }
//
