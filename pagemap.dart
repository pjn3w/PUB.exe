import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';


class Pagemap extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State< Pagemap> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }
    double zoomVal=5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        
      ),
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _zoomminusfunction(),
          _zoomplusfunction(),
        ],
      ),
    );
  }

 Widget _zoomminusfunction() {

    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchMinus,color:Color(0xFF606060)),
            onPressed: () {
              zoomVal--;
             _minus( zoomVal);
            }),
    );
 }
 Widget _zoomplusfunction() {
   
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchPlus,color:Color(0xFF606060)),
            onPressed: () {
              zoomVal++;
              _plus(zoomVal);
            }),
    );
 }

 Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(13.7563,100.5018), zoom: zoomVal)));
  }
  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(13.7563,100.5018), zoom: zoomVal)));
  }

  
 

  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:  CameraPosition(target: LatLng(13.7563,100.5018), zoom: 12),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
                  Route66_Club,Brick_Bar,DND,NungLen,Onyx_RCA,The_Cassette,Tederm,Saxophone,Funky_Villa,
                  The_Rock_Pub,OMalleys,The_M_Pub,Per_Pub,_days_2_nights,Flann,Chilling,Molly_Bar,Bully        },
      ),
    );
  }
}

Marker Route66_Club = Marker(
  markerId: MarkerId('Route66 Club'),
  position: LatLng(13.7513383,100.575358),
  infoWindow: InfoWindow(title: 'Route66 Club'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker Brick_Bar = Marker(
  markerId: MarkerId('Brick Bar'),
  position: LatLng(13.758648,100.498587),
  infoWindow: InfoWindow(title: 'Mohu Mohu Cafe'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker DND = Marker(
  markerId: MarkerId('DND (do not disturb)'),
  position: LatLng(13.7318029,100.5861279),
  infoWindow: InfoWindow(title: 'DND (do not disturb)'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker NungLen = Marker(
  markerId: MarkerId('Nung Len & Esco Bar'),
  position: LatLng(13.7317412,100.5864942),
  infoWindow: InfoWindow(title: 'Nung Len & Esco Bar'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker Demo = Marker(
  markerId: MarkerId('Demo'),
  position: LatLng(13.7325672,100.5855313),
  infoWindow: InfoWindow(title: 'Demo'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker Onyx_RCA = Marker(
  markerId: MarkerId('Onyx RCA'),
  position: LatLng(13.7519737,100.5750013),
  infoWindow: InfoWindow(title: 'Onyx RCA'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker The_Cassette = Marker(
  markerId: MarkerId('The Cassette Music Bar Ekamai'),
  position: LatLng(13.7291304,100.5868959),
  infoWindow: InfoWindow(title: 'The Cassette Music Bar Ekamai'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker Tederm = Marker(
  markerId: MarkerId('Tederm X 455'),
  position: LatLng(13.731893,100.5842023),
  infoWindow: InfoWindow(title: 'Tederm X 455'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker Saxophone = Marker(
  markerId: MarkerId('Saxophone Pub & Restaurant'),
  position: LatLng(13.7636497,100.5380549),
  infoWindow: InfoWindow(title: 'Saxophone Pub & Restaurant'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker Funky_Villa = Marker(
  markerId: MarkerId('Funky Villa'),
  position: LatLng(13.7324473,100.5852158),
  infoWindow: InfoWindow(title: 'Funky Villa'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker The_Rock_Pub = Marker(
  markerId: MarkerId('The Rock Pub'),
  position: LatLng(13.7435553,100.5157726),
  infoWindow: InfoWindow(title: 'The Rock Pub'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker OMalleys = Marker(
  markerId: MarkerId('OMalleys Irish Pub'),
  position: LatLng(13.7271863,100.5311851),
  infoWindow: InfoWindow(title: 'OMalleys Irish Pub'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker The_M_Pub = Marker(
  markerId: MarkerId('The M Pub'),
  position: LatLng(13.7268674,100.5227326),
  infoWindow: InfoWindow(title: 'The M Pub'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker Per_Pub = Marker(
  markerId: MarkerId('Per Pub & Restaurant'),
  position: LatLng(13.7328211,100.576878),
  infoWindow: InfoWindow(title: 'Per Pub & Restaurant'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker _days_2_nights = Marker(
  markerId: MarkerId('3 days 2 nights'),
  position: LatLng(13.8212452,100.5909281),
  infoWindow: InfoWindow(title: '3 days 2 nights'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker Flann = Marker(
  markerId: MarkerId('Flann OBriens Irish Pub'),
  position: LatLng(13.9144428,100.5459949),
  infoWindow: InfoWindow(title: 'Flann OBriens Irish Pub'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker Chilling = Marker(
  markerId: MarkerId('Chilling House Cafe'),
  position: LatLng(13.7493378,100.530012),
  infoWindow: InfoWindow(title: 'Chilling House Cafe'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker Molly_Bar = Marker(
  markerId: MarkerId('Molly Bar'),
  position: LatLng(13.7567021,100.4997337),
  infoWindow: InfoWindow(title: 'Molly Bar'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker Bully = Marker(
  markerId: MarkerId('Bullys PUB'),
  position: LatLng(13.7421003,100.552498),
  infoWindow: InfoWindow(title: 'Bullys PUB'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);