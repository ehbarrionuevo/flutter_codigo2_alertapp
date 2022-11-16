
import 'package:codigo2_alerta/models/incident_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class IncidentMapPage extends StatefulWidget {
  List<IncidentModel> incidentList;
  IncidentMapPage({required this.incidentList});
  @override
  State<IncidentMapPage> createState() => _IncidentMapPageState();
}

class _IncidentMapPageState extends State<IncidentMapPage> {
  Set<Marker> _markers = {};

  @override
  initState(){
    super.initState();
    buildMarkers();
  }

  buildMarkers(){
    for(var item in widget.incidentList){
      Marker marker = Marker(
        markerId: MarkerId(_markers.length.toString()),
        position: LatLng(item.latitud, item.longitud),
      );
      _markers.add(marker);
    }
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget.incidentList);
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
