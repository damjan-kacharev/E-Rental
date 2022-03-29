import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  bool agree=false;
  void _doSomething() {
    // Do something
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/login2.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),

        backgroundColor: Colors.deepPurple,

        body: Center(
          child:Column(
            children: [

              SizedBox(height: 130,),

              Container(
              child: Material(
                color: Colors.transparent,
                elevation: 0,
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Text(" welcome to ",style: TextStyle(fontSize: 30,color: Colors.white, backgroundColor: Colors.transparent,fontWeight: FontWeight.bold,),),
              )
                //Text("What do you want to rent?",style: TextStyle(fontSize: 25,color: Colors.purpleAccent, backgroundColor: Colors.yellow),),
              ),

              SizedBox(height: 5,),

              Container(
                child: Material(
                  color: Colors.blue,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(28),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.red,
                    onTap: (){
                      Navigator.pushNamed(context, 'login');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Ink.image(
                          image: AssetImage(
                              'assets/logo2.png'),
                          height: 300,
                          width: 300,
                          fit: BoxFit.cover,
                        ),
                        //SizedBox(height: 6,),
                        //Text("e-scooter",style: TextStyle(fontSize:15,color: Colors.yellow),),
                        //SizedBox(height: 6,),




                      ],
                    )  ,
                  ),
                ),
              ),

              SizedBox(height: 120,),

              Row(
                children: [
                  SizedBox(width: 120,),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'login');
                  },
                    child: Text("continue",style: TextStyle(color: Colors.white,fontSize: 25.0,fontStyle: FontStyle.italic,fontFamily: 'Hind',),),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                  )

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
