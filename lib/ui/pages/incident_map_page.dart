
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class IncidentMapPage extends StatefulWidget {
  @override
  State<IncidentMapPage> createState() => _IncidentMapPageState();
}

class _IncidentMapPageState extends State<IncidentMapPage> {
  Set<Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(-11.261080, -76.331244),
          zoom: 6.5,
        ),
        markers: _markers,
        onTap: (LatLng position){

          Marker myMarker = Marker(
            markerId: MarkerId(_markers.length.toString()),
            position: position,
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose)
          );

          _markers.add(myMarker);

          setState(() {

          });

        },
      ),
    );
  }
}
