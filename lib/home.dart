import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'bucket.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KFC App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
          fontFamily: 'AppFont',
            fontWeight: FontWeight.bold,
            fontSize: 24
          )
        )
      ),
      home: BucketScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool buttonColor=false;
  int _page=0;
  late bool check;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  Widget buttonInAppbar(Color butCol,double _height, double wid,String txt, Icon icon){
    return Column(
      children: [
        Container(
          height: _height,
          width: wid,
          child: ElevatedButton(
            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: butCol,
                  width: 5
                )
              ),
              backgroundColor: Color(0xFF333333),
            ),
            child: icon,
          ),
        ),
            SizedBox(
              height: 3,
            ),
            Text(txt,style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            ),
        //Divider()
      ],
    );
  }
  Widget getContainer(double h, double w){
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(19),
      ),
    );
  }
  Widget getStack(double h){
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: h*0.4,
          width: h*0.4,
          decoration: BoxDecoration(
              color: Colors.red,
            borderRadius: BorderRadius.circular(20)
          ),
        ),
        Positioned(
          left: h*0.1,
          right: h*0.1,
          bottom: h*0.3,
          child: Container(
            color: Colors.blue,
            height: h*0.2,
            width: h*0.2,
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    final Size screenSize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:Color(0xFF333333),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.location_pin,size: 40,color: Colors.red,),
              Column(
                children: [
                  Text('Delivering to :',style: Theme.of(context).textTheme.headline1,),
                  Text('158 St,G-11/1',style: Theme.of(context).textTheme.headline1,)
                ],
              ),
            ],
          ),
          Text('KFC',style: TextStyle(
            color: Colors.red,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          )),
        ],
      ),

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(screenSize.width*0.34),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                buttonInAppbar(buttonColor ? Colors.red : Colors.blueGrey, screenSize.width*0.14, screenSize.width*0.45,'Delivery',Icon(Icons.directions_bike_rounded)),
                  buttonInAppbar(buttonColor ? Colors.blueGrey:Colors.red, screenSize.width*0.14, screenSize.width*0.45,'Click & Collect',Icon(Icons.collections)),
                ],
              ),
             // SizedBox(height: 4,),
              Divider(
                color: Colors.white,
                indent: 20,
                endIndent: 220,
              ),
              SizedBox(height: 2,),
              Divider(
                indent: 20,
              endIndent: 20,
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Container(
                height: screenSize.height*0.17,
                width: screenSize.width*0.9,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Catgories',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                  TextButton(
                    onPressed: (){},
                    child:  Row(
                      children: [
                        Text('See All',
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),),
                        Icon(Icons.navigate_next)
                      ],
                    ),
                  )
                  ],
                ),
              ),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   SizedBox(width: 20,),
                   getContainer(screenSize.height*0.1, screenSize.height*0.2),
                   SizedBox(width: 25,),
                   getContainer(screenSize.height*0.1, screenSize.height*0.2),
                   SizedBox(width: 25,),
                   getContainer(screenSize.height*0.1, screenSize.height*0.2),
                   SizedBox(width: 25,),
                   getContainer(screenSize.height*0.1, screenSize.height*0.2),
                   SizedBox(width: 25,),
                   getContainer(screenSize.height*0.1, screenSize.height*0.2),
                 ],
               ),
             ),
              // Top selling text widget
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Top Selling',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                  ],
                ),
              ),
             // All stack widget in row
             SizedBox(
               height: 80,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 getStack(screenSize.width),
                 getStack(screenSize.width),
               ],
             ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  getStack(screenSize.width),
                  getStack(screenSize.width),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  getStack(screenSize.width),
                  getStack(screenSize.width),
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),

        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        key: _bottomNavigationKey,
        color: Color(0xFF333333),
        backgroundColor: Colors.black12,
        items: [
          CurvedNavigationBarItem(
              child:IconButton(
                onPressed: (){}, icon: Icon(FontAwesomeIcons.home,color: Colors.white,),
              ),
          label: 'Home',
            labelStyle: TextStyle(
              color: Colors.white,
            )

          ),
          CurvedNavigationBarItem(
              child:IconButton(
                onPressed: (){}, icon: Icon(Icons.local_offer_outlined),
              ),
              label: 'Promo',
              labelStyle: TextStyle(
                color: Colors.white,
              )
          ),
          CurvedNavigationBarItem(
              child:IconButton(
                onPressed: (){}, icon: Icon(FontAwesomeIcons.bowlRice),
              ),
              label: 'Promo',
              labelStyle: TextStyle(
                color: Colors.white,
              )
          ),
          CurvedNavigationBarItem(
              child:IconButton(
                onPressed: (){}, icon: Icon(FontAwesomeIcons.bitbucket),
              ),
              label: 'Bucket',
              labelStyle: TextStyle(
                color: Colors.white,
              )
          ),

          CurvedNavigationBarItem(
              child:IconButton(
                onPressed: (){}, icon: Icon(FontAwesomeIcons.list),
              ),
              label: 'More',
              labelStyle: TextStyle(
                color: Colors.white,
              )
          )
        ],
        onTap: (index){
          print("The index is ${index}");
          //setState(() {
           // _page=index;
         // });
        },
      ),
    );
  }
}
