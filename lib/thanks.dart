import 'package:e_rental/sensor.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Thanks extends StatefulWidget {
  const Thanks({Key? key}) : super(key: key);

  @override
  _ThanksState createState() => _ThanksState();
}

class _ThanksState extends State<Thanks> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "E RENTAL",
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            // title: Text(
            //   "E RENTAL",
            //   style: TextStyle(
            //       color: Colors.black,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 35.0,
            //       fontStyle: FontStyle.italic,
            //       fontFamily: 'Hind'),
            // ),
            // leading: Icon(Icons.menu),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.adjust),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Sensor()),
                  );
                },
              ),
            ],
            backgroundColor: Colors.deepPurpleAccent[400],
          ),

    body: Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/pozadina.jpg'), fit: BoxFit.cover)),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/cov1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),

                padding: EdgeInsets.only(left: 19),
                //    padding: const EdgeInsets.only(top: 0.0, left: 20),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 30, right: 50),
                      child: Text(
                        'Thank you for your payment.',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 33,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Column( children:[
                      Text(
                        "Whould you like to rate the whole experience?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Hind',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SmoothStarRating(
                        starCount: 5,
                        isReadOnly: false,
                        spacing: 15,
                        size: 40,
                        allowHalfRating: false,
                        //       rating: 3,
                        color: Colors.yellow,
                        borderColor: Colors.blue[800],
                        onRated: (value) {
                          setState(() {
                            rating = value;
                            //   print("rating is  $rating");
                          });
                        },
                      ),],),
                    Row(
                      children:[Padding(
                          padding: EdgeInsets.fromLTRB(30, 130, 0, 0),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'maps');
                            },
                            child: Text(
                              "skip",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Hind',
                              ),
                            ),
                            color: Colors.green[600],
                          )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(120, 130, 0, 0),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'maps');
                              },
                              child: Text(
                                "next",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Hind',
                                ),
                              ),
                              color: Colors.green[600],
                            )),
                      ],),
                  ],
                ),

              ),
            ],
          ),
         ),
        ),
      ),
    );
  }
}
