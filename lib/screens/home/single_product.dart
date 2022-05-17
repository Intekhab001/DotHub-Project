import 'package:flutter/material.dart';


class SingleProduct extends StatelessWidget {
  // const SingleProduct({Key? key}) : super(key: key);

  final String productImage;
  final String productName;
  // final Function onTap;
  SingleProduct({required this.productImage, required this.productName, /*required this.onTap*/});

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
                  child: Image.network(
                      // "https://pngimg.com/uploads/spinach/spinach_PNG10.png"
                    productImage
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                    child: Column(
                      children: [
                        Text(productName, style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ), ),
                        Text("₹50/100 Gram",
                          style: TextStyle(
                            color: Colors.grey,
                          ),),
                        Row(
                          children: [
                            Expanded(child:
                            Container(
                              padding: EdgeInsets.only(left: 3),
                              height: 30,
                              width: 50,

                              decoration: BoxDecoration(
                                // color: Colors.red,
                                  border: Border.all(
                                      color: Colors.grey
                                  ),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "50 Gram", style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                  Container(
                                    child: Icon(Icons.arrow_drop_down),
                                  ),
                                ],
                              ),
                            ),
                            ),

                            SizedBox(width: 5,),

                            Expanded(child:
                            Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                // color: Colors.black,
                                  border: Border.all(
                                      color: Colors.grey
                                  ),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.remove, size: 15, color: Color(0xffd0b84c),),
                                  Text("1", style: TextStyle(
                                    color: Color(0xffd0b84c),
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  Icon(Icons.add, size: 15, color: Color(0xffd0b84c))


                                ],
                              ),

                            ),
                            ),
                          ],
                        )
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
