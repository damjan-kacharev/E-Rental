import 'package:flutter/material.dart';

class MyBike extends StatefulWidget {
  const MyBike({Key? key}) : super(key: key);

  @override
  _MyBikeState createState() => _MyBikeState();
}

class _MyBikeState extends State<MyBike> {
  bool agree=false;
  void _doSomething() {
    // Do something
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/purple_home wallpaper.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          //  backgroundColor: Colors.transparent,
          elevation: 0,

          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_rounded),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.deepPurpleAccent[400],
        ),

        //backgroundColor: Colors.cyanAccent,

        body: Container(

          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/pozadina.jpg'), fit: BoxFit.cover)),

          child:Column(

            children: [

              SizedBox(height: 60,),

              Container(
                  child: Material(
                    color: Colors.deepPurpleAccent[400],
                    elevation: 8,
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Text(" Choose model for your bicycle: ",style: TextStyle(fontSize: 23,color: Colors.white)),
                  )
                //Text("What do you want to rent?",style: TextStyle(fontSize: 25,color: Colors.purpleAccent, backgroundColor: Colors.yellow),),
              ),

              SizedBox(height: 100,),

              Row(
                children: [
                  SizedBox(width: 20,),
                  Container(
                    child: Material(
                      color: Colors.blue,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(28),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: (){
                          Navigator.pushNamed(context, 'compute');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Ink.image(
                              image: AssetImage(
                                  'assets/b3.png'),
                              height: 130,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("model 1",style: TextStyle(fontSize:15,color: Colors.yellow),),
                            SizedBox(height: 6,),




                          ],
                        )  ,
                      ),
                    ),
                  ),

                  SizedBox(width: 40,),


                  Container(
                    child: Material(
                      color: Colors.blue,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(28),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: (){
                          Navigator.pushNamed(context, 'compute');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Ink.image(
                              image: AssetImage(
                                  'assets/b4.png'),
                              height: 130,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("model 2",style: TextStyle(fontSize:15,color: Colors.yellow),),
                            SizedBox(height: 6,),
                          ],
                        )  ,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 50,),

              Row(
                children: [
                  SizedBox(width: 20,),
                  Container(
                    child: Material(
                      color: Colors.blue,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(28),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: (){
                          Navigator.pushNamed(context, 'compute');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Ink.image(
                              image: AssetImage(
                                  'assets/b5.png'),
                              height: 130,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("model 3",style: TextStyle(fontSize:15,color: Colors.yellow),),
                            SizedBox(height: 6,),




                          ],
                        )  ,
                      ),
                    ),
                  ),

                  SizedBox(width: 40,),


                  Container(
                    child: Material(
                      color: Colors.blue,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(28),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: (){
                          Navigator.pushNamed(context, 'compute');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Ink.image(
                              image: AssetImage(
                                  'assets/b6.png'),
                              height: 130,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6,),
                            Text("model 4",style: TextStyle(fontSize:15,color: Colors.yellow),),
                            SizedBox(height: 6,),
                          ],
                        )  ,
                      ),
                    ),
                  ),
                ],
              ),

              // Container(
              //   child: Material(
              //     color: Colors.blue,
              //     elevation: 8,
              //     borderRadius: BorderRadius.circular(28),
              //     clipBehavior: Clip.antiAliasWithSaveLayer,
              //     child: InkWell(
              //       splashColor: Colors.red,
              //       onTap: (){},
              //       child: Column(
              //         mainAxisSize: MainAxisSize.min,
              //         children: [
              //
              //           Ink.image(
              //             image: AssetImage(
              //                 'assets/login1.jpg'),
              //             height: 130,
              //             width: 140,
              //             fit: BoxFit.cover,
              //           ),
              //           SizedBox(height: 6,),
              //           Text("e-scooter",style: TextStyle(fontSize:15,color: Colors.yellow),),
              //           SizedBox(height: 6,),
              //
              //
              //
              //
              //         ],
              //       )  ,
              //     ),
              //   ),
              // ),
              //
              // SizedBox(height: 40,),
              //
              //
              // Container(
              //   child: Material(
              //     color: Colors.blue,
              //     elevation: 8,
              //     borderRadius: BorderRadius.circular(28),
              //     clipBehavior: Clip.antiAliasWithSaveLayer,
              //     child: InkWell(
              //       splashColor: Colors.red,
              //       onTap: (){},
              //       child: Column(
              //         mainAxisSize: MainAxisSize.min,
              //         children: [
              //
              //           Ink.image(
              //             image: AssetImage(
              //                 'assets/login1.jpg'),
              //             height: 130,
              //             width: 140,
              //             fit: BoxFit.cover,
              //           ),
              //           SizedBox(height: 6,),
              //           Text("bicycle",style: TextStyle(fontSize:15,color: Colors.yellow),),
              //           SizedBox(height: 6,),
              //         ],
              //       )  ,
              //     ),
              //   ),
              // ),


            ],
          ),
        ),
      ),
    );
  }
}
