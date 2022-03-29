import 'package:flutter/material.dart';

class MyBill extends StatefulWidget {
  const MyBill({Key? key}) : super(key: key);

  @override
  _MyBillState createState() => _MyBillState();
}

class _MyBillState extends State<MyBill> {
  bool agree=false;
  void _doSomething() {
    // Do something
    Navigator.pushNamed(context, 'thanks');
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/pozadina.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          //  backgroundColor: Colors.transparent,
          elevation: 0,
          //leading: Icon(Icons.menu),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_rounded),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.deepPurpleAccent[400],
        ),
        //backgroundColor: Colors.purple[200],
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/pozadina.jpg'), fit: BoxFit.cover)),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 30),
                child: Text(
                  'Enter your information to complete the payment:',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26, fontWeight: FontWeight.bold
                  ),
                ),
              ),

              SingleChildScrollView(
                child: Container(
                  //width: 300,
                  padding: EdgeInsets.only(top: 100, right: 45, left: 45),

                  child: Column(

                    children: [

                      Text("Payment amount:", style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,fontWeight: FontWeight.bold, height: 2.0,
                      ),),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.purple.shade100,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.white,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )),
                          hintText: 'payment amount',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                          contentPadding: EdgeInsets.all(8),
                        ),

                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text("Card number:",  style: TextStyle(
                          color: Colors.black,
                          fontSize: 20, fontWeight: FontWeight.bold
                      ), ),

                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.purple.shade100,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.white,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )),
                          hintText: 'card number',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                          contentPadding: EdgeInsets.all(8),
                        ),

                      ),

                      SizedBox(
                        height: 30,
                      ),
                      Text("Name on card:",  style: TextStyle(
                          color: Colors.black,
                          fontSize: 20, fontWeight: FontWeight.bold
                      ),),

                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.purple.shade100,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.white,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )),
                          hintText: 'name on card',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          contentPadding: EdgeInsets.all(8),),

                      ),

                      //red

                      SizedBox(
                        height: 60,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Container(width:120,child: Column(
                            children: [

                              Text("Expiry date:",  style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20, fontWeight: FontWeight.bold
                              ), ),

                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  fillColor: Colors.purple.shade100,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      )),
                                  hintText: 'expiry date',
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                  contentPadding: EdgeInsets.all(8),),

                              ),

                            ],
                          ),),

                          Container(width:140,child: Column(
                            children: [
                              Text("Security code:",  style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20, fontWeight: FontWeight.bold
                              ), ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  fillColor: Colors.purple.shade100,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      )),
                                  hintText: 'security code',
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                  contentPadding: EdgeInsets.all(8),),

                              ),

                            ],
                          ),),

                        ],
                      ),

                      //checkbox



                    ],



                  ),

                ),



              ),

              //   SingleChildScrollView(
              //     scrollDirection: Axis.vertical,
              //   child: Container(
              //
              //         width: double.infinity,
              //         margin: EdgeInsets.all(5),
              //         padding:  EdgeInsets.only(left: 35, top: 420),
              //         //height: double.infinity,
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Flexible(child: Column(
              //             children: [
              //               TextField(
              //                 obscureText: true,
              //                 decoration: InputDecoration(
              //                   fillColor: Colors.purple.shade100,
              //                   filled: true,
              //                   focusedBorder: OutlineInputBorder(
              //                       borderRadius: BorderRadius.circular(20),
              //                       borderSide: BorderSide(
              //                         color: Colors.white,
              //                       )),
              //                   enabledBorder: OutlineInputBorder(
              //                       borderRadius: BorderRadius.circular(20),
              //                       borderSide: BorderSide(
              //                         color: Colors.black,
              //                       )),
              //                   hintText: 'name on card',
              //                   hintStyle: TextStyle(
              //                     color: Colors.black,
              //                   ),
              //                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              //                   contentPadding: EdgeInsets.all(8),),
              //
              //               ),
              //
              //             ],
              //           ),),
              //
              //           Flexible(child: Column(
              //             children: [
              //               TextField(
              //                 obscureText: true,
              //                 decoration: InputDecoration(
              //                   fillColor: Colors.purple.shade100,
              //                   filled: true,
              //                   focusedBorder: OutlineInputBorder(
              //                       borderRadius: BorderRadius.circular(20),
              //                       borderSide: BorderSide(
              //                         color: Colors.white,
              //                       )),
              //                   enabledBorder: OutlineInputBorder(
              //                       borderRadius: BorderRadius.circular(20),
              //                       borderSide: BorderSide(
              //                         color: Colors.black,
              //                       )),
              //                   hintText: 'name on card',
              //                   hintStyle: TextStyle(
              //                     color: Colors.black,
              //                   ),
              //                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              //                   contentPadding: EdgeInsets.all(8),),
              //
              //               ),
              //
              //             ],
              //           ),),
              //
              //
              //         ],
              //       ),
              //     ),
              // ),



              Container(
                padding: EdgeInsets.only(top: 130, right: 30, left: 30),
                child:
                Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Material(
                            color: Colors.purple,
                            child: Checkbox(
                              activeColor: Colors.lightGreenAccent,
                              //fillColor: MaterialStateProperty.all(Color(0xFF5D5F6E)),//checkbox button
                              overlayColor: MaterialStateProperty.all(Color(
                                  0xFF849282)),
                              //focusColor: Colors.green,
                              checkColor: Colors.white,

                              value: agree,
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              splashRadius: 90,

                              onChanged: (value) {
                                setState(() {
                                  agree = value ?? false;
                                });
                              },

                            ),
                          ),
                          Container(
                           padding: EdgeInsets.only(top: 0, right: 0, left: 45),
                            child: Text(
                            '  I have read and accept\n terms and conditions',
                            textAlign: TextAlign.center,
                            style: TextStyle(

                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                          ),
                        ],
                      ),
                      ElevatedButton( //next button
                        onPressed: agree ? _doSomething : null, child: Text('next',style: TextStyle(fontSize:14, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                        style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent[400], padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),

                        ),
                      ),
                    ]),

              ),
            ],
          ),
        ),
      ),

    );
  }


}
