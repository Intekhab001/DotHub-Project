import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:learning_firebase/screens/home/single_product.dart';
import 'package:learning_firebase/screens/home/single_shop.dart';
import 'package:learning_firebase/screens/product_overview/product_overview.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // Widget SingleShop(){
  //   return Container(
  //     margin: EdgeInsets.all(5),
  //     height: 230,
  //     width: 160,
  //     decoration: BoxDecoration(
  //         color: Color(0xffd9dad9),
  //
  //         /// Box shadow
  //
  //         boxShadow: [
  //           BoxShadow(
  //             color:Colors.grey,
  //             offset: const Offset(
  //               5.0,
  //               5.0,
  //             ),
  //             blurRadius: 3.0,
  //             spreadRadius: 1.0,
  //           ), //BoxShadow
  //           BoxShadow(
  //             color: Color(0xffd1ad17).withOpacity(0.3),
  //             offset: const Offset(0.0, 0.0),
  //             blurRadius: 1.0,
  //             spreadRadius: 2.0,
  //           ), //BoxShadow
  //         ],
  //
  //         ///till here
  //         borderRadius: BorderRadius.circular(10)
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Expanded(
  //           child: Image.network("https://pngimg.com/uploads/spinach/spinach_PNG10.png"),
  //           flex: 2,
  //         ),
  //         Expanded(
  //           child: Padding(
  //             padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Center(
  //                   child: Text("Shop Name", style: TextStyle(
  //                     color: Colors.black,
  //                     fontWeight: FontWeight.bold,
  //                   ),
  //                   ),
  //                 ),
  //
  //               ],
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  //
  //
  ///Single Product
  // Widget singleProduct(){
  //   return Container(
  //     margin: EdgeInsets.all(5),
  //     height: 230,
  //     width: 160,
  //     decoration: BoxDecoration(
  //         color: Color(0xffd9dad9),
  //
  //         /// Box shadow
  //
  //         boxShadow: [
  //           BoxShadow(
  //             color:Colors.grey,
  //             offset: const Offset(
  //               5.0,
  //               5.0,
  //             ),
  //             blurRadius: 3.0,
  //             spreadRadius: 1.0,
  //           ), //BoxShadow
  //           BoxShadow(
  //             color: Color(0xffd1ad17).withOpacity(0.3),
  //             offset: const Offset(0.0, 0.0),
  //             blurRadius: 1.0,
  //             spreadRadius: 2.0,
  //           ), //BoxShadow
  //         ],
  //
  //         ///till here
  //         borderRadius: BorderRadius.circular(10)
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Expanded(
  //           child: Image.network("https://pngimg.com/uploads/spinach/spinach_PNG10.png"),
  //           flex: 2,
  //         ),
  //         Expanded(
  //           child: Padding(
  //             padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
  //             child: Column(
  //               children: [
  //                 Text("Product Name", style: TextStyle(
  //                   color: Colors.black,
  //                   fontWeight: FontWeight.bold,
  //                 ), ),
  //                 Text("₹50/100 Gram",
  //                   style: TextStyle(
  //                     color: Colors.grey,
  //                   ),),
  //                 Row(
  //                   children: [
  //                     Expanded(child:
  //                     Container(
  //                       padding: EdgeInsets.only(left: 3),
  //                       height: 30,
  //                       width: 50,
  //
  //                       decoration: BoxDecoration(
  //                         // color: Colors.red,
  //                           border: Border.all(
  //                               color: Colors.grey
  //                           ),
  //                           borderRadius: BorderRadius.circular(8)
  //                       ),
  //                       child: Row(
  //                         children: [
  //                           Expanded(
  //                             child: Text(
  //                               "50 Gram", style: TextStyle(fontSize: 10),
  //                             ),
  //                           ),
  //                           Container(
  //                             child: Icon(Icons.arrow_drop_down),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                     ),
  //
  //                     SizedBox(width: 5,),
  //
  //                     Expanded(child:
  //                     Container(
  //                       height: 30,
  //                       width: 50,
  //                       decoration: BoxDecoration(
  //                         // color: Colors.black,
  //                           border: Border.all(
  //                               color: Colors.grey
  //                           ),
  //                           borderRadius: BorderRadius.circular(8)
  //                       ),
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.center,
  //                         children: [
  //                           Icon(Icons.remove, size: 15, color: Color(0xffd0b84c),),
  //                           Text("1", style: TextStyle(
  //                             color: Color(0xffd0b84c),
  //                             fontWeight: FontWeight.bold,
  //                           ),),
  //                           Icon(Icons.add, size: 15, color: Color(0xffd0b84c))
  //
  //
  //                         ],
  //                       ),
  //
  //                     ),
  //                     ),
  //                   ],
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget listTile(IconData icon, String title){
    return ListTile(
      leading: Icon(
            icon,
            size: 32,
          ),
      title: Text(title, style: TextStyle(
        color: Colors.black45
      ),
      ),


    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),

     /// Drawer
      drawer: Drawer(
        child: Container(
          color: Color(0xffd1ad17),
          child: ListView(
            children: [
              DrawerHeader(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white54,
                        radius: 43,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.yellow,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Welcome to DotHub"),
                          Text("Guest"),
                          SizedBox(height: 7,),
                          Container(
                              child: IconButton(onPressed: ()=> FirebaseAuth.instance.signOut(), icon: Icon(Icons.logout))
                          )
                        ],
                      )
                    ],
                  ),
              ),
              listTile(Icons.home, "home"),
              listTile(Icons.shopping_bag_outlined, "Review Cart"),
              listTile(Icons.person_outline, "My Profile"),
              listTile(Icons.notifications_outlined, "Notification"),
              listTile(Icons.favorite_outline, "Wishlist"),
              listTile(Icons.document_scanner_outlined, "Raise a Complaint"),
              listTile(Icons.question_answer_outlined, "FAQs"),
              listTile(Icons.safety_divider_outlined, "About Us"),

              Container(
                child: Column(
                  children: [
                    Text("Contact Support"),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Call us: "),
                          Text("18000 98743")
                          // Text("Email us: suppportdothub@gmal.com")
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Email us: "),
                          Text("suppportdothub@gmal.com")
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
          ///profile screen
        // ProfileScreen(
        //   providerConfigs: [
        //     EmailProviderConfiguration(),
        //   ],
        // ),
      ),

      //App Bar
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xffd6b738),
        centerTitle: false,
        title: Text("DotHub", style: TextStyle(
          color: Colors.black,
        ),),
        actions: [
          //Circle Avatar
          CircleAvatar(
            radius: 14,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search, size: 17,color: Colors.black,),
          ),

          //Circle Avatar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
                radius: 14,
                backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shop, size: 17,color: Colors.black,),
            ),
          )
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/vegetable.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                        child: Container(

                      // color: Colors.red,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 170.0),
                                child: Container(
                                  height: 35,
                                  width: 80,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40) ),
                                    color: Color(0xffd1ad17),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Text("DotHub",
                                    style: TextStyle(
                                      fontSize: 17,
                                        color: Colors.white,
                                        shadows: [
                                      BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 10,
                                        offset: Offset(3,3)
                                      )
                                    ]),
                                    ),
                                  ),
                                )
                              ),
                              Text("30% off", style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[100]
                              ),
                              ),
                              Text("on all products", style: TextStyle(
                                  // fontSize: 40,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),

                            ],
                          ),
                    ),
                    ),
                    Expanded(
                      child: Container(
                        ///other half of expanded inside the image
                        // color: Colors.yellow,
                      ),
                    )
                  ],
                ),
              ),
            ),
            /// Snacks Shops
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Snakcs"),
                  Text("view all", style: TextStyle(
                      color: Colors.grey
                  ),)
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // SingleProduct(productImage: "https://pngimg.com/uploads/spinach/spinach_PNG10.png", productName: "Mint",),
                 /// just for Screen Shots
                  SingleProduct(productImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYR2zJm7nrSJ2SHufqU66ifijExOmx9L7duA&usqp=CAU",
                      productName: "Chicken Fry"),

                  SingleProduct(productImage: "https://w7.pngwing.com/pngs/319/183/png-transparent-shawarmas-shawarma-wrap-vegetarian-cuisine-kebab-lebanese-cuisine-shawarma-food-recipe-cuisine.png",
                      productName: "Shawarma"),

                  SingleProduct(productImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYR2zJm7nrSJ2SHufqU66ifijExOmx9L7duA&usqp=CAU",
                      productName: "Chicken Fry"),



                  /// Just for Screen shots


                  SingleShop(shopImage: "https://www.pngall.com/wp-content/uploads/4/Mcdonalds-Fries.png",
                   shopName: "mcdonalds",
                   // onTap: (){
                   //   Navigator.push(
                   //     context,
                   //     MaterialPageRoute(builder: (context) => const ProductOverview()),
                   //   );
                   // },
                 ),
                 SingleShop(shopImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9n5sPYntDg8RxPuBCkx6RvvbKbq0Ca7HFcA&usqp=CAU",
                   shopName: "KFC",
                   // onTap: (){
                   //   Navigator.push(
                   //     context,
                   //     MaterialPageRoute(builder: (context) => const ProductOverview()),
                   //   );
                   // },
                 ),
                 SingleShop(shopImage: "https://toppng.com/uploads/preview/our-whopper-sandwich-is-a-lb-of-savory-flame-grilled-burger-king-email-delivery-115629768018rjzxcxkqi.png",
                   shopName: "Burger King",
                   // onTap: (){
                   //   Navigator.push(
                   //     context,
                   //     MaterialPageRoute(builder: (context) => const ProductOverview()),
                   //   );
                   // },
                 ),
                ],
              ),
            ),


            ///New Code
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Grocery"),
                  Text("view all", style: TextStyle(
                      color: Colors.grey
                  ),)
                ],
              ),
            ),

            ///new Shop Code
            SingleChildScrollView(
              /// Just For Screen Shot

              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ///for Screen Shot only
                  SingleProduct(productImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD7uAiRbwDff-q3mxayBi2K8ls2avTbZ5QzQ&usqp=CAU" ,
                      productName: "Rice",
                      ),
                  SingleProduct(productImage: "https://e7.pngegg.com/pngimages/950/670/png-clipart-atta-flour-whole-wheat-flour-flour-food-company.png" ,
                    productName: "Aata",
                  ),
                  SingleProduct(productImage: "https://e7.pngegg.com/pngimages/867/796/png-clipart-lentil-vegetarian-cuisine-%E3%82%AB%E3%83%A9%E3%83%BC%E3%82%B3%E3%83%B3%E3%82%BF%E3%82%AF%E3%83%88%E3%83%AC%E3%83%B3%E3%82%BA-dal-pulse-moong-dal-food-turmeric.png",
                      productName: "Chana Daal"),



                  /// for Screen Shot only








                  SingleShop(shopImage: "https://mpng.subpng.com/20180711/gca/kisspng-grocery-store-supermarket-logo-marketing-local-foo-market-logo-5b46604719eab9.8514661015313388231062.jpg",
                    shopName: "D Mart",
                  // onTap: (){
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => const ProductOverview()),
                  //   );
                  // },
                  ),
                  SingleShop(shopImage: "https://p1.hiclipart.com/preview/421/158/514/food-market-stall-marketplace-grocery-store-farmers-market-street-food-fresh-market-vehicle-png-clipart.jpg",
                    shopName: "Farm Fresh",
                    // onTap: (){
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => const ProductOverview()),
                    //   );
                    // },
                  ),
                  SingleShop(shopImage: "https://banner.uclipart.com/20210308/qgs/natural-food-logo-local-food-for-life-6045f9d0cca5e3.56649508.png",
                    shopName: "Shop Local",
                  //   onTap: (){
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => const ProductOverview()),
                  //   );
                  // },
                  ),

                ],
              ),
            ),


            ///till here
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       singleProduct(),
            //       singleProduct(),
            //       singleProduct(),
            //     ],
            //   ),
            // ),
            
            
            ///Earlier Code
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dairy"),
                  Text("view all", style: TextStyle(
                      color: Colors.grey
                  ),)
                ],
              ),
            ),

            /// Second Product column
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleShop(shopImage: "https://pngimg.com/uploads/spinach/spinach_PNG10.png", shopName: "Shop I",
                    // onTap: (){
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => const ProductOverview()),
                    //   );
                    // },
                  ),
                  SingleShop(shopImage: "https://pngimg.com/uploads/spinach/spinach_PNG10.png", shopName: "Shop J",
                    // onTap: (){
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => const ProductOverview()),
                    //   );
                    // },
                  ),
                  SingleShop(shopImage: "https://pngimg.com/uploads/spinach/spinach_PNG10.png", shopName: "Shop K",
                    // onTap: (){
                    //   Navigator.push(
                    //     context,
                    //     // MaterialPageRoute(builder: (context) => const ProductOverview()),
                    //   );
                    // },
                  ),



                ],
              ),
            ),

          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffd6b738),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              color: Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,
            color: Colors.black,
            ),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            label: 'Cart',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );

  }
}
