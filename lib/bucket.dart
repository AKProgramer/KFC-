import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BucketScreen extends StatefulWidget{
  @override
  State<BucketScreen> createState() => _BucketScreenState();
}

class _BucketScreenState extends State<BucketScreen> {
  var increment=0;
  bool butClickColor=false;
  var countForColor=1;
  // Widget buttonInAppbar(Color butCol,double _height, double wid,String txt, Icon icon){
  //   return Column(
  //     children: [
  //       Container(
  //         height: _height,
  //         width: wid,
  //         child: ElevatedButton(
  //           onPressed: (){
  //
  //           },
  //           style: ElevatedButton.styleFrom(
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(12),
  //                 side: BorderSide(
  //                     color: butCol,
  //                     width: 5
  //                 )
  //             ),
  //             backgroundColor: Color(0xFF333333),
  //           ),
  //           child: icon,
  //         ),
  //       ),
  //       SizedBox(
  //         height: 3,
  //       ),
  //       Text(txt,style: TextStyle(
  //         color: Colors.white,
  //         fontSize: 20,
  //       ),
  //       ),
  //       //Divider()
  //     ],
  //   );
  // }
  @override
  Widget build(BuildContext context){
    var subTotal=640;
    var delFee=50;
    String dealName="Midnight Deal 3";
    var dealPrice=640;
    var totalBill=subTotal+delFee;
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Bucket',style: TextStyle(
            color: Colors.white,
          ),),
        ),
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: screenSize.width*0.14,
                        width: screenSize.width*0.45,
                        child: ElevatedButton(
                          onPressed: (){
                            if(countForColor!=1){
                              setState(() {
                                butClickColor=false;
                                countForColor=1;
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                    color: butClickColor ? Colors.blueGrey : Colors.red ,
                                    width: 5
                                )
                            ),
                            backgroundColor: Color(0xFF333333),
                          ),
                          child: Icon(Icons.directions_bike_rounded),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text('Delivery',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      ),
                      //Divider()
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: screenSize.width*0.14,
                        width:  screenSize.width*0.45,
                        child: ElevatedButton(
                          onPressed: (){
                            if(countForColor!=2){
                              setState(() {
                                butClickColor=true;
                                countForColor=2;
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                    color: butClickColor ? Colors.red : Colors.blueGrey,
                                    width: 5
                                )
                            ),
                            backgroundColor: Color(0xFF333333),
                          ),
                          child: Icon(Icons.collections),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text('Click & Collect',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      ),
                      //Divider()
                    ],
                  ),
                  // buttonInAppbar(buttonColor ? Colors.red : Colors.blueGrey, screenSize.width*0.14, screenSize.width*0.45,'Delivery',Icon(Icons.directions_bike_rounded)),
                  // buttonInAppbar(buttonColor ? Colors.blueGrey:Colors.red, screenSize.width*0.14, screenSize.width*0.45,'Click & Collect',Icon(Icons.collections)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: screenSize.height*0.3,
                width: screenSize.width*0.9,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // image
                        Container(
                          height: 75,
                          width: 75,
                          color: Colors.red,
                        ),
                        Column(
                          children: [
                            Text('${dealName}', style: TextStyle(
                              color: Colors.white,
                            ),),
                            Text('Rs.${dealPrice}', style: TextStyle(
                              color: Colors.white,
                            ),),
                          ],
                        ),

                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: (){
                                  increment--;
                                  setState(() {

                                  });
                                },
                                icon: Icon(Icons.delete, color: Colors.white,),
                              ),
                            ),
                            Text('${increment}',style: TextStyle(
                              color: Colors.white,
                            ),),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: (){
                                  increment++;
                                  setState(() {

                                  });
                                },
                                icon: Icon(Icons.add, color: Colors.white,),
                              ),
                            )
                      ],
                    ),
                    Divider(
                      indent: 18,
                      endIndent: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 130.0),
                      child: Text('SpecialInstructions (Optional)', style: TextStyle(
                       color:Colors.white,
                      ),),
                    ),
                   Container(
                     width: screenSize.width*0.8,
                     height: screenSize.height*0.05,
                     child: TextFormField(
                       cursorColor: Colors.white,
                       decoration: InputDecoration(
                       border: OutlineInputBorder(),
                        hintText: 'Add Cooking/Delivery Instructions',
                           prefixIcon: Icon(Icons.message,color: Colors.yellow,),
                         hintStyle: TextStyle(
                           color: Colors.white,
                         ),


                       ),
                     ),
                   )
                  ],

                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: screenSize.height*0.15,
                width: screenSize.width*0.9,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text('SubTotal',style: TextStyle(
                            color: Colors.white,
                          ),),
                          Text('Rs.${subTotal}',style: TextStyle(
                            color: Colors.white,
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Delivery Fee',style: TextStyle(
                            color: Colors.white,
                          ),),
                          Text('Rs.${delFee}',style: TextStyle(
                            color: Colors.white,
                          ),),
                        ],
                      ),
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',style: TextStyle(
                            color: Colors.white,
                          ),),
                          Text('Rs.${totalBill}',style: TextStyle(
                            color: Colors.white,
                          ),),
                        ],
                      ),
                    )
                  ],
                )
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                   height: screenSize.height*0.06,
                   width: screenSize.width*0.8,
                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    child: Text('Proceed to Checkout',style: TextStyle(
                      color: Colors.white,
                    ),)),
              ),
              //SizedBox(height: 50,),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
      ),
      bottomNavigationBar: const BottomAppBar(
        notchMargin:5.0,
       shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(FontAwesomeIcons.home,color: Colors.white,),
                Text(
                  'Home',style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.local_offer_outlined,color: Colors.white,),
                Text(
                  'prome',style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(FontAwesomeIcons.bucket, color: Colors.white,),
                Text(
                  'Promo',style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(FontAwesomeIcons.list, color: Colors.white,),
                Text(
                  'List',style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ],
            ),

          ],
        ),
      )

    );
  }
}