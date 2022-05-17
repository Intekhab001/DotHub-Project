import 'package:flutter/material.dart';


class SingleShop extends StatelessWidget {
  // const SingleShop({Key? key}) : super(key: key);
  final String shopImage;
  final String shopName;
  // final Function onTap;
  SingleShop({required this.shopImage, required this.shopName, /*required this.onTap*/});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 230,
            width: 160,
            decoration: BoxDecoration(
                color: Color(0xffd9dad9),

                /// Box shadow

                boxShadow: [
                  BoxShadow(
                    color:Colors.grey,
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Color(0xffd1ad17).withOpacity(0.3),
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 1.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                ],

                ///till here
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.network(shopImage,),
                  flex: 2,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(shopName, style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}

