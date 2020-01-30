import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class Map extends StatelessWidget {
  GoogleMapController mapController;

  LatLng _center = const LatLng(27.850409040866424, -82.6863281428814);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        markers: {
          stPeteMarker,
        },
        myLocationButtonEnabled: true,
        compassEnabled: true,
      ),
    );
  }
}

Marker stPeteMarker = Marker(
  markerId: MarkerId('stPeteMarker'),
  position: LatLng(27.850409040866424, -82.6863281428814),
  infoWindow: InfoWindow(title: 'Marker 1'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
