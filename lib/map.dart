import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:latlong2/latlong.dart' as latLng;


class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({Key? key}) : super(key: key);

  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {



  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){

    setState(() {
      _markers.add(
       Marker(markerId: MarkerId('id-1'),
           position: LatLng(22.5448131,88.3403691),
           infoWindow: InfoWindow(
             title: 'Place name',
             snippet: 'Place number 1'
           )
       )
      );

    });

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text("Google Map"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),

        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.close)),
          // Padding(
          //     padding: EdgeInsets.only(right: 20.0),
          //     child: GestureDetector(
          //       onTap: () {},
          //       child: Icon(
          //         Icons.search,
          //         size: 26.0,
          //       ),
          //     )
          // ),
          // Padding(
          //     padding: EdgeInsets.only(right: 20.0),
          //     child: GestureDetector(
          //       onTap: () {},
          //       child: Icon(
          //           Icons.more_vert
          //       ),
          //     )
          // ),
        ],
      ),

      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: CameraPosition(target: LatLng(22.5448131,88.3403691),
            zoom: 15),

      ),

      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.location_searching),
        onPressed: (){

        
        },

      ),

    );
  }
}

