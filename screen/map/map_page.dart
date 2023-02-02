import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  MapPage({Key? key, required this.args}) : super(key: key) {
    _markers[args.address] = Marker(
        markerId: MarkerId(args.address),
        position: LatLng(args.lat, args.lng),
        infoWindow: InfoWindow(title: args.title, snippet: args.address));
  }

  static const String routeName = "/map_page";

  final MapPageArgs args;

  final Map<String, Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.white,
        body: GoogleMap(
            onMapCreated: _onMapCreated,
            myLocationButtonEnabled: false,
            initialCameraPosition:
                CameraPosition(target: LatLng(args.lat, args.lng), zoom: 17.0),
            markers: _markers.values.toSet()));
  }

  void _onMapCreated(GoogleMapController controller) {
    controller.showMarkerInfoWindow(_markers[args.address]!.mapsId);
  }
}

class MapPageArgs {
  MapPageArgs(
      {required this.title,
      required this.address,
      required this.lat,
      required this.lng});

  final String title;
  final String address;
  final double lat;
  final double lng;
}
